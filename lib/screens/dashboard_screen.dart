import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/crop_provider.dart';
import '../widgets/crop_card.dart';
import '../widgets/weather_card.dart';
import 'irrigation_screen.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final crops = context.watch<CropProvider>().crops;
    return Scaffold(
      appBar: AppBar(
        title: Text('AgriInsight'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Farmer!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            WeatherCard(city: "Delhi"),
            SizedBox(height: 20),
            Text('Your Crops', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: crops.length,
                itemBuilder: (_, index) => CropCard(crop: crops[index]),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => IrrigationScreen()));
              },
              icon: Icon(Icons.water_drop),
              label: Text('Schedule Irrigation'),
              style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
            )
          ],
        ),
      ),
    );
  }
}
