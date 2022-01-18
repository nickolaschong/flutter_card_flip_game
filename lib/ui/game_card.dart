import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../states/game_state.dart';

class GameCard extends ConsumerWidget {
  const GameCard({
    Key? key,
    required this.onFlip,
    required this.isFront,
    this.isShowFlutterLogo = false,
  }) : super(key: key);
  final VoidCallback onFlip;
  final bool isFront;
  final bool isShowFlutterLogo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameState = ref.watch(gameStateProvider);

    return Center(
      child: IgnorePointer(
        ignoring: gameState != const GameState.start(),
        child: GestureDetector(
          onTap: () => EasyDebounce.debounce(
              'd', const Duration(milliseconds: 100), () => onFlip()),
          child: Card(
            color: isFront ? Colors.yellow : Colors.white,
            child: SizedBox(
              width: 200,
              height: 100,
              child: Center(
                child: isFront
                    ? const Text('?')
                    : isShowFlutterLogo
                        ? const FlutterLogo()
                        : const SizedBox.shrink(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
