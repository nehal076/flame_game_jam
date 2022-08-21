import 'package:flutter/material.dart';
import 'package:leena2/main.dart';

class Dashboard extends StatelessWidget {
  final LeenaGame game;
  const Dashboard({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return game.introFinished
        ? Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'GEMS: ${game.magicLevel}',
                      style:
                          const TextStyle(fontSize: 24, fontFamily: 'Arcade'),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Time Remaining: ${game.remainingTime}',
                      style:
                          const TextStyle(fontSize: 24.0, fontFamily: 'Arcade'),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              game.remainingTime > 0
                  ? Container()
                  : game.magicLevel == game.numGems
                      ? const Text(
                          'YOU WON!',
                          style: TextStyle(
                            fontSize: 80,
                            color: Colors.black,
                            fontFamily: 'Arcade',
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'GAME OVER',
                              style: TextStyle(
                                fontSize: 80,
                                color: Colors.black,
                                fontFamily: 'Arcade',
                              ),
                            ),
                          ],
                        )
            ],
          )
        : Container();
  }
}
