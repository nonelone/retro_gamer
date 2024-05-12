import 'package:flutter/material.dart';
import 'package:retro_gamer/widgets/battery.dart';
import 'package:retro_gamer/widgets/bluetooth.dart';
import 'package:retro_gamer/widgets/network.dart';
import 'package:retro_gamer/widgets/sound.dart';

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
          children: const [
            BatteryWidget(),
            SoundWidget(),
            NetworkWidget(),
            BluetoothWidget()
          ],
        ),
      ),
    );
  }
}
