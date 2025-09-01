import 'package:flutter/material.dart';
import '../models/crop.dart';
import '../widgets/animated_health_indicator.dart';

class CropDetailsScreen extends StatelessWidget {
  final Crop crop;
  const CropDetailsScreen({required this.crop});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(crop.name)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Health', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            AnimatedHealthIndicator(health: crop.health),
            SizedBox(height: 20),
            Text('Soil Moisture: 45%', style: TextStyle(fontSize: 18)),
            Text('Last Irrigation: 2 days ago', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
