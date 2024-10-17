import 'package:flutter/material.dart';

class ZonesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Irrigation Zones'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.grass, size: 40),
              title: Text('Zone 1'),
              subtitle: Text('Status: Active'),
              trailing: Switch(value: true, onChanged: (bool value) {}),
            ),
            ListTile(
              leading: Icon(Icons.grass, size: 40),
              title: Text('Zone 2'),
              subtitle: Text('Status: Inactive'),
              trailing: Switch(value: false, onChanged: (bool value) {}),
            ),
            Spacer(),
            FloatingActionButton(
              onPressed: () {
                // Add Zone Logic
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
