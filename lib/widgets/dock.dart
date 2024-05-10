import 'package:flutter/material.dart';

class Dock extends StatelessWidget {
  const Dock({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        color: const Color.fromRGBO(0, 0, 0, .7),
        height: 80,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dockButtons.length,
            shrinkWrap: true,
            itemBuilder: (context, i) {
              return DockButton(
                  icon: Icon(
                    dockButtons.keys.elementAt(i),
                    size: 48,
                  ),
                  tooltip: dockButtons.values.elementAt(i));
            }),
      ),
    );
  }
}

class DockButton extends StatelessWidget {
  const DockButton({super.key, required this.icon, required this.tooltip});
  final Icon icon;
  final String tooltip;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: 64,
            height: 64,
            color: Colors.white,
            child: IconButton(
              onPressed: () {},
              icon: icon,
              tooltip: tooltip,
            ),
          )),
    );
  }
}

Map<IconData, String> dockButtons = {
  Icons.apps: "Apps",
  Icons.person: "User",
  Icons.settings: "Settings",
  Icons.terminal: "Terminal",
  Icons.keyboard: "Keyboard",
  Icons.gamepad_outlined: "Gamer",
};
