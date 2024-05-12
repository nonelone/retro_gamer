import 'dart:async';

import 'package:flutter/material.dart';
import 'package:retro_gamer/shared/theme.dart';
import 'package:retro_gamer/widgets/clock.dart';
import 'package:retro_gamer/widgets/dock.dart';
import 'package:retro_gamer/widgets/gameTile.dart';
import 'package:retro_gamer/widgets/tray.dart';

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
          Container(
              decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 117, 32, 245),
                  Color.fromARGB(255, 255, 202, 68),
                ],
                begin: FractionalOffset(0.0, 0.0),
                end: FractionalOffset(1.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          )),
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
              padding: const EdgeInsets.all(16),
              child: ClockTile(time: _time),
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Tray(),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    height: MediaQuery.of(context).size.height / 1.5,
                    color: Colors.black54,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 30,
                          itemBuilder: (BuildContext context, int index) {
                            return GameTile();
                          }),
                    )),
              ))
        ],
      ),
    );
  }
}
