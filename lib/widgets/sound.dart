import 'package:flutter/material.dart';

class SoundWidget extends StatefulWidget {
  const SoundWidget({super.key});

  @override
  State<StatefulWidget> createState() => SoundWidgetState();
}

class SoundWidgetState extends State<SoundWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.headphones,
        color: Colors.white,
        size: 32,
      ),
      tooltip: "sound 100%",
    );
  }
}
