import 'package:flutter/material.dart';

import 'game_card_builder.dart';
import 'game_retry.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find the Flutter Logo'),
      ),
      body: Column(
        children: const [
          SizedBox(height: 10),
          Expanded(child: GameCardBuilder()),
          Flexible(child: GameRetry()),
        ],
      ),
    );
  }
}
