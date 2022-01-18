import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../states/game_state.dart';

class GameRetry extends ConsumerWidget {
  const GameRetry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameState = ref.watch(gameStateProvider);

    return gameState.maybeWhen(
      start: () => const SizedBox.shrink(),
      orElse: () {
        return Column(
          children: [
            gameState == const GameState.won()
                ? const Text('You Won!', style: TextStyle(color: Colors.green))
                : const Text('You Lost!', style: TextStyle(color: Colors.red)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
              onPressed: () {
                ref.read(gameStateProvider.notifier).start();
              },
              child: const Text('Try Again'),
            ),
          ],
        );
      },
    );
  }
}
