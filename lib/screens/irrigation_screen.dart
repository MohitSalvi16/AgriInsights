import 'package:flutter/material.dart';

class IrrigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Irrigation Scheduler')),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Irrigation Scheduled Successfully!')),
            );
          },
          icon: Icon(Icons.water_drop),
          label: Text('Schedule Irrigation'),
          style: ElevatedButton.styleFrom(minimumSize: Size(200, 50)),
        ),
      ),
    );
  }
}
