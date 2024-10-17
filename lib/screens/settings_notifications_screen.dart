import 'package:flutter/material.dart';

class SettingsNotificationsScreen extends StatefulWidget {
  @override
  _SettingsNotificationsScreenState createState() =>
      _SettingsNotificationsScreenState();
}

class _SettingsNotificationsScreenState
    extends State<SettingsNotificationsScreen> {
  bool notificationsEnabled = true;
  double moistureThreshold = 30.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings & Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Notification Settings
            Text(
              'Notification Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: Text('Enable Notifications'),
              value: notificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  notificationsEnabled = value;
                });
              },
            ),
            Divider(),
            // Moisture Threshold Setting
            Text(
              'Moisture Threshold (%)',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: moistureThreshold,
              min: 0,
              max: 100,
              divisions: 10,
              label: moistureThreshold.round().toString(),
              onChanged: (double value) {
                setState(() {
                  moistureThreshold = value;
                });
              },
            ),
            Divider(),
            // Notifications Section
            Text(
              'Notifications',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading:
                    Icon(Icons.notification_important, color: Colors.red),
                    title: Text('Low moisture in Zone 1!'),
                    subtitle: Text('Moisture dropped below 20%'),
                  ),
                  ListTile(
                    leading: Icon(Icons.cloud, color: Colors.blue),
                    title: Text('Rain expected tomorrow'),
                    subtitle: Text('Irrigation will pause automatically.'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
