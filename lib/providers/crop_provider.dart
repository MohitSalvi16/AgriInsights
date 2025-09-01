import 'package:flutter/material.dart';
import '../models/crop.dart';

class CropProvider extends ChangeNotifier {
  List<Crop> crops = [
    Crop(name: 'Wheat', health: 85, image: 'assets/wheat.png'),
    Crop(name: 'Rice', health: 70, image: 'assets/rice.png'),
    Crop(name: 'Corn', health: 95, image: 'assets/corn.png'),
  ];

  void updateHealth(String name, double health) {
    final crop = crops.firstWhere((c) => c.name == name);
    crop.health = health;
    notifyListeners();
  }
}
