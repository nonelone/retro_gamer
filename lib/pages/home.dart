import 'dart:async';

import 'package:flutter/material.dart';
import 'package:retro_gamer/shared/theme.dart';
import 'package:retro_gamer/widgets/clock.dart';
import 'package:retro_gamer/widgets/dock.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: retroGamerTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime _time = DateTime.now();

  void setTime() {
    setState(() {
      _time = DateTime.now();
    });
  }

  late Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setTime();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://wallpapercave.com/wp/wp2725020.jpg",
            fit: BoxFit.fill,
            width: 1920,
            height: 1080,
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Dock(),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: ClockTile(time: _time),
            ),
          )
        ],
      ),
    );
  }
}
