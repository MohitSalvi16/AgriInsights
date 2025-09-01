import 'package:flutter/material.dart';

class AnimatedHealthIndicator extends StatelessWidget {
  final double health;
  const AnimatedHealthIndicator({required this.health});

  @override
  Widget build(BuildContext context) {
    Color getColor() {
      if (health > 80) return Colors.green;
      if (health > 50) return Colors.orange;
      return Colors.red;
    }

    return Stack(
      children: [
        Container(
          height: 10,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 10,
          width: health,
          decoration: BoxDecoration(
              color: getColor(), borderRadius: BorderRadius.circular(5)),
        ),
      ],
    );
  }
}
