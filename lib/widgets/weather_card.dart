import 'package:flutter/material.dart';
import '../services/api_service.dart';

class WeatherCard extends StatelessWidget {
  final String city;

  const WeatherCard({required this.city, super.key});

  @override
  Widget build(BuildContext context) {
    final api = ApiService();

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: FutureBuilder<double>(
        future: api.fetchTemperature(city),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Center(child: CircularProgressIndicator()),
            );
          } else if (snapshot.hasError) {
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Text("Failed to fetch temperature"),
            );
          } else {
            final temperature = snapshot.data!;
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "${temperature.toStringAsFixed(1)}°C",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
