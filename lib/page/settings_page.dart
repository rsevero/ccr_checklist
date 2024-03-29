import 'package:ccr_checklist/store/config_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  final TextEditingController _diverNameController = TextEditingController();

  SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final configStore = Provider.of<ConfigStore>(context);

    // Initialize the text controller with the current diver name
    _diverNameController.text = configStore.configData['DiverName'] ?? '';
    _diverNameController.addListener(() {
      configStore.setDiverName(_diverNameController.text);
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        actions: <Widget>[
          Observer(builder: (context) {
            return IconButton(
              icon: const Icon(Icons.save),
              onPressed: configStore.isModified
                  ? () => configStore.saveConfig()
                  : null,
            );
          }),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _diverNameController,
              decoration: const InputDecoration(
                labelText: 'Diver Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
