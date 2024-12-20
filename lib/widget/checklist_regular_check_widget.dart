// CCR Checklist - a checklist app for rebreather users
// Copyright (C) 2024  Rodrigo Severo
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:ccrchecklist/data/checklist_check.dart';
import 'package:ccrchecklist/misc/constants.dart';
import 'package:ccrchecklist/misc/datetime_formater_helper.dart';
import 'package:ccrchecklist/misc/flutter_extension_methods.dart';
import 'package:ccrchecklist/store/checklist_editor_store.dart';
import 'package:ccrchecklist/widget/timer_duration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class ChecklistRegularCheckWidget extends StatefulWidget {
  final int sectionIndex;
  final int checkIndex;

  const ChecklistRegularCheckWidget({
    super.key,
    required this.sectionIndex,
    required this.checkIndex,
  });

  @override
  State<ChecklistRegularCheckWidget> createState() =>
      _ChecklistRegularCheckWidgetState();
}

class _ChecklistRegularCheckWidgetState
    extends State<ChecklistRegularCheckWidget> {
  late Timer _timer;
  late int _remainingSeconds;
  bool _timerAvailable = false;
  bool _isInit = true;
  bool isHovering = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (_isInit) {
      _isInit = false;
      final checklistEditorStore = Provider.of<ChecklistEditorStore>(context);
      final check = checklistEditorStore.checks[widget.sectionIndex]
          [widget.checkIndex] as ChecklistRegularCheck;

      _timerAvailable = (check.secondsTimer > 0);
      if (_timerAvailable) {
        _timer = Timer.periodic(const Duration(seconds: 1), (timer) {});
        _timer.cancel();
        _remainingSeconds = check.secondsTimer;
      }
    }
  }

  @override
  void dispose() {
    if (_timerAvailable) {
      _timer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final checklistEditorStore = Provider.of<ChecklistEditorStore>(context);
    final check = checklistEditorStore.checks[widget.sectionIndex]
        [widget.checkIndex] as ChecklistRegularCheck;

    return InkWell(
      onTap: () {
        checklistEditorStore.setCheckIsChecked(
            widget.sectionIndex, widget.checkIndex, !check.isChecked);
      },
      child: ListTile(
        leading: Checkbox(
          value: check.isChecked,
          onChanged: (bool? value) {
            // This is now redundant since the ListTile handles the toggle, but
            // required for the Checkbox widget
            if (value != null) {
              checklistEditorStore.setCheckIsChecked(
                  widget.sectionIndex, widget.checkIndex, value);
            }
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: context.textTheme.bodyLarge,
                children: [
                  TextSpan(
                    text: check.description,
                    style: context.ccrThemeExtension.checkDescriptionTextTheme,
                  ),
                  if (check.observation.isNotEmpty) ...[
                    TextSpan(
                      text: ' ',
                      style:
                          context.ccrThemeExtension.checkDescriptionTextTheme,
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: InkWell(
                          onTap: () => onPressedInfo(context, check),
                          onHover: (hovering) {
                            setState(() {
                              isHovering = hovering;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color:
                                  isHovering ? Colors.grey : Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.info_outline,
                                color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (_timerAvailable) _buildTimer(),
            const SizedBox(width: 8),
            Wrap(
              spacing: 8.0, // Horizontal space between reference fields
              children: _buildReferences(check),
            ),
          ],
        ),
      ),
    );
  }

  void onPressedInfo(BuildContext context, ChecklistRegularCheck check) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Info'),
          content: Text(check.observation),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildTimer() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: GestureDetector(
        onTap: _toggleTimer,
        onLongPress: _changeTimerValue,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          decoration: BoxDecoration(
            color: _getTimerBackgroundColor(),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            ccrFormatSecondsToMinutesSecondsTimer(_remainingSeconds),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: _getTimerTextColor(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildReferences(ChecklistRegularCheck check) {
    final checklistEditorStore = Provider.of<ChecklistEditorStore>(context);
    final theme = context.ccrThemeExtension;

    return [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Column for all prefixes
            Column(
              children: List.generate(
                check.references.length,
                (index) => SizedBox(
                  height: 68,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      check.references[index].prefix ?? '',
                      style: theme.checkReferenceTextTheme,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            // Column for all TextFormField
            SizedBox(
              width: 110,
              child: Column(
                children: List.generate(
                  check.references.length,
                  (index) => SizedBox(
                    height: 68,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: TextFormField(
                        initialValue: check.references[index].value == null
                            ? ''
                            : check.references[index].value.toString(),
                        decoration: InputDecoration(
                          labelText: 'Ref ${index + 1}',
                          labelStyle: theme.dialogFieldTitleTextTheme,
                          border: const OutlineInputBorder(),
                          counterText: '',
                        ),
                        maxLength: 5,
                        style: theme.dialogFieldContentTextTheme,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true, signed: true),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9.-]'))
                        ],
                        onChanged: (value) {
                          double? newValue = double.tryParse(value);
                          checklistEditorStore.setCheckReferenceValue(
                              widget.sectionIndex,
                              widget.checkIndex,
                              index,
                              newValue);
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            // Column for all suffixes
            Column(
              children: List.generate(
                check.references.length,
                (index) => SizedBox(
                  height: 68,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      check.references[index].suffix ?? '',
                      style: theme.checkReferenceTextTheme,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  void _toggleTimer() {
    if (_timer.isActive) {
      setState(() {
        _timer.cancel();
      });
    } else {
      setState(() {
        _startTimer();
      });
    }
  }

  Color _getTimerTextColor() {
    if (_remainingSeconds == 0) {
      return context.ccrThemeExtension.ccrTimerTextColorFinished;
    } else if (_timer.isActive) {
      return context.ccrThemeExtension.ccrTimerTextColorRunning;
    } else {
      return context.ccrThemeExtension.ccrTimerTextColorNotRunning;
    }
  }

  Color _getTimerBackgroundColor() {
    if (_remainingSeconds == 0) {
      return context.ccrThemeExtension
          .ccrTimerBackgroundcolorFinished; // Timer reached zero
    } else if (_timer.isActive) {
      return context
          .ccrThemeExtension.ccrTimerBackgroundcolorRunning; // Timer is running
    } else {
      return context.ccrThemeExtension
          .ccrTimerBackgroundcolorNotRunning; // Timer is stopped but not zero
    }
  }

  void _startTimer() {
    if (_remainingSeconds > 0) {
      _timer = Timer.periodic(
        const Duration(seconds: 1),
        (timer) async {
          if (_remainingSeconds > 0) {
            setState(() {
              _remainingSeconds--;
            });
          } else {
            _timer.cancel();

            // Play a sound
            final player = AudioPlayer();
            await player.play(AssetSource('sounds/alarm-clock-short.mp3'));
          }
        },
      );
    }
  }

  Future<void> _changeTimerValue() async {
    var (currentMinutes, currentSeconds) =
        ccrConvertSecondsToMinutesSeconds(_remainingSeconds);

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        final theme = context.ccrThemeExtension;

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: Text(
                'Edit Timer Duration',
                style: theme.dialogTitleTextTheme,
              ),
              content: TimerDuration(
                minutes: currentMinutes,
                seconds: currentSeconds,
                onMinutesChanged: (value) {
                  setState(() {
                    currentMinutes = value;
                  });
                },
                onSecondsChanged: (value) {
                  setState(() {
                    currentSeconds = value;
                  });
                },
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _remainingSeconds =
                          (currentMinutes * ccrSecondsInAMinute) +
                              currentSeconds;
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
