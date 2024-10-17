import 'package:flutter/material.dart';
import 'zones_screen.dart';

class WeatherSensorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather & Sensors'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Weather Information
            Card(
              child: ListTile(
                leading: Icon(Icons.wb_sunny, size: 40),
                title: Text('Temperature: 30°C'),
                subtitle: Text('Rain Chance: 20%'),
              ),
            ),
            SizedBox(height: 16),
            // Sensor Data
            Card(
              child: ListTile(
                leading: Icon(Icons.water_drop, size: 40),
                title: Text('Soil Moisture: 40%'),
                subtitle: Text('Zone 1'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.water_drop_outlined, size: 40),
                title: Text('Soil Moisture: 30%'),
                subtitle: Text('Zone 2'),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ZonesScreen()),
                );
              },
              child: Text('Manage Zones'),
            ),
          ],
        ),
      ),
    );
  }
}
