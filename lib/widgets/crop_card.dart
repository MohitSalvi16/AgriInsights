import 'package:flutter/material.dart';
import '../models/crop.dart';
import 'animated_health_indicator.dart';
import '../screens/crop_details_screen.dart';

class CropCard extends StatelessWidget {
  final Crop crop;
  const CropCard({required this.crop});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => CropDetailsScreen(crop: crop)),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset(crop.image, width: 50, height: 50),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(crop.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    AnimatedHealthIndicator(health: crop.health),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
