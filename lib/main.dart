import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/crop_provider.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CropProvider()),
      ],
      child: AgriInsightApp(),
    ),
  );
}

class AgriInsightApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgriInsight',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.grey[50],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}
