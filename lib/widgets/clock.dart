import 'package:flutter/material.dart';

class ClockTile extends StatefulWidget {
  final DateTime time;

  const ClockTile({super.key, required this.time});

  @override
  State<ClockTile> createState() => _ClockTileState();
}

class _ClockTileState extends State<ClockTile> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        height: 80,
        width: 120,
        color: const Color.fromRGBO(0, 0, 0, .7),
        child: Center(
          child: Text(
            '${widget.time.hour < 10 ? "0${widget.time.hour}" : widget.time.hour}:${widget.time.minute < 10 ? "0${widget.time.minute}" : widget.time.minute}',
            style: const TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
