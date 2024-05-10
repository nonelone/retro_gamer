import 'package:flutter/material.dart';
import 'package:retro_gamer/widgets/clock.dart';

class Tray extends StatelessWidget {
  const Tray({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        color: const Color.fromRGBO(0, 0, 0, .7),
        height: 80,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [],
        ),
      ),
    );
  }
}
