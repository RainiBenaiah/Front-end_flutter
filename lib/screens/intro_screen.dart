import 'package:flutter/material.dart';
import 'weather_sensors_screen.dart';
import 'zones_screen.dart';
import 'settings_notifications_screen.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Mahiri Smart Irrigation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mahiri Smart App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Guidelines:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Text('1. Monitor soil moisture and weather data.'),
            Text('2. Manage irrigation zones independently.'),
            Text('3. Receive notifications and alerts.'),
            Text('4. Setting.'),
            SizedBox(height: 16),
            Divider(),
            // Dashboard Section
            Text(
              'Dashboard',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Card(
              child: ListTile(
                leading: Icon(Icons.thermostat, size: 40, color: Colors.orange),
                title: Text('Weather: 30°C | Rain Chance: 20%'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.water_drop, size: 40, color: Colors.blue),
                title: Text('Soil Moisture (Zone 1): 40%'),
              ),
            ),
            Spacer(),
            // Navigation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WeatherSensorsScreen()),
                    );
                  },
                  child: Text('Weather & Sensors'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ZonesScreen()),
                    );
                  },
                  child: Text('Manage Zones'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SettingsNotificationsScreen()),
                    );
                  },
                  child: Text('Settings & Alerts'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
