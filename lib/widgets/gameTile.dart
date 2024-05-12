import 'package:flutter/material.dart';

class GameTile extends StatelessWidget {
  const GameTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text("Game Title",
                      style: Theme.of(context).textTheme.headlineLarge),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                  child: Image.network(
                    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ficon-library.com%2Fimages%2Fgame-icon-png%2Fgame-icon-png-14.jpg&f=1&nofb=1&ipt=600f11bf11c4a14adc567a356f5905bf60440059878c502cd4529c0ac06d50eb&ipo=images",
                    width: MediaQuery.of(context).size.width / 5,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text("Play!",
                        style: Theme.of(context).textTheme.headlineLarge),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class AddGameTile extends StatelessWidget {
  const AddGameTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text("Game Title",
                      style: Theme.of(context).textTheme.headlineLarge),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                  child: Image.network(
                    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ficon-library.com%2Fimages%2Fgame-icon-png%2Fgame-icon-png-14.jpg&f=1&nofb=1&ipt=600f11bf11c4a14adc567a356f5905bf60440059878c502cd4529c0ac06d50eb&ipo=images",
                    width: MediaQuery.of(context).size.width / 5,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text("Play!",
                        style: Theme.of(context).textTheme.headlineLarge),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
