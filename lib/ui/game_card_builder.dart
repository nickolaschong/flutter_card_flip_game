import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:page_flip_builder/page_flip_builder.dart';

import '../states/game_state.dart';
import 'game_card.dart';

class GameCardBuilder extends ConsumerStatefulWidget {
  const GameCardBuilder({Key? key}) : super(key: key);

  @override
  _GameCardBuilderState createState() => _GameCardBuilderState();
}

class _GameCardBuilderState extends ConsumerState<GameCardBuilder> {
  static const _numberOfCards = 2;
  late int _flutterLogoCardIndex;
  final random = Random();

  @override
  void initState() {
    _shuffleFlutterLogoCardIndex();
    super.initState();
  }

  void _shuffleFlutterLogoCardIndex() {
    _flutterLogoCardIndex = random.nextInt(_numberOfCards);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(gameStateProvider, (previousState, currentState) {
      if (currentState == const GameState.start()) {
        setState(_shuffleFlutterLogoCardIndex);
      }
    });

    // Using ref.read should be avoided as much as possible.
    // It exists as a work-around for cases where using watch or listen would be otherwise too inconvenient to use.
    // If you can, it is almost always better to use watch/listen, especially watch.
    final gameStateNotifier = ref.watch(gameStateProvider.notifier);

    return ListView.builder(
      itemCount: _numberOfCards,
      itemBuilder: (_, index) {
        final _pageFlipKey = GlobalKey<PageFlipBuilderState>();
        final isShowFlutterLogo = index == _flutterLogoCardIndex;
        return PageFlipBuilder(
          key: _pageFlipKey,
          interactiveFlipEnabled: false,
          frontBuilder: (_) => GameCard(
              isFront: true,
              onFlip: () {
                _pageFlipKey.currentState?.flip();
              }),
          backBuilder: (_) => GameCard(
            isFront: false,
            isShowFlutterLogo: isShowFlutterLogo,
            onFlip: () {},
          ),
          onFlipComplete: (_) => isShowFlutterLogo
              ? gameStateNotifier.won()
              : gameStateNotifier.lost(),
        );
      },
    );
  }
}
