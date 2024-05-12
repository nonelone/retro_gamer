import 'package:flutter/material.dart';

class BatteryWidget extends StatefulWidget {
  const BatteryWidget({super.key});

  @override
  State<StatefulWidget> createState() => BatteryWidgetState();
}

class BatteryWidgetState extends State<BatteryWidget> {
  double batteryPercentage = 1.0;
  IconData batteryIcon = Icons.battery_full;

  void checkBattery() {
    if (batteryPercentage > 0) {
      batteryPercentage = batteryPercentage - .1;
    } else {
      batteryPercentage = 1.0;
    }
    setState(() {
      batteryPercentage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: checkBattery,
      icon: Icon(
        batteryIcon,
        color: Colors.white,
        size: 32,
      ),
      tooltip: "${batteryPercentage * 100}🗲",
    );
  }
}
