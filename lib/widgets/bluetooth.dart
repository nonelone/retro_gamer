import 'package:flutter/material.dart';

class BluetoothWidget extends StatefulWidget {
  const BluetoothWidget({super.key});

  @override
  State<BluetoothWidget> createState() => BluetoothWidgetState();
}

class BluetoothWidgetState extends State<BluetoothWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.bluetooth,
        color: Colors.white,
        size: 32,
      ),
      tooltip: "sound 100%",
    );
  }
}
