import 'package:flutter/material.dart';

class NetworkWidget extends StatefulWidget {
  const NetworkWidget({super.key});

  @override
  State<NetworkWidget> createState() => NetworkWidgetState();
}

class NetworkWidgetState extends State<NetworkWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext cxt) {
              return NetworkDialog();
            });
      },
      icon: const Icon(
        Icons.network_wifi_2_bar,
        color: Colors.white,
        size: 32,
      ),
      tooltip: "sound 100%",
    );
  }
}

class NetworkDialog extends Dialog {
  @override
  final double elevation = 0;
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 0, 110),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              color: Colors.black54,
              width: MediaQuery.of(context).size.width / 5,
              height: MediaQuery.of(context).size.height / 2,
            ),
          ),
        ));
  }

  NetworkDialog({super.key});
}
