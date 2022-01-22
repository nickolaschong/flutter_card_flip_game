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
  final random = Random();

  late int _flutterLogoCardIndex;
  late int _selectedIndex;
  late List<GlobalKey<PageFlipBuilderState>> _pageFlipKeys;

  @override
  void initState() {
    _selectedIndex = -1;
    _shuffleFlutterLogoCardIndex();
    _pageFlipKeys = List.generate(
      _numberOfCards,
      (index) => GlobalKey<PageFlipBuilderState>(),
    );
    super.initState();
  }

  void _shuffleFlutterLogoCardIndex() {
    _flutterLogoCardIndex = random.nextInt(_numberOfCards);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(gameStateProvider, (previousState, currentState) {
      if (currentState == const GameState.retry()) {
        setState(() {
          _pageFlipKeys[_selectedIndex].currentState?.flip();
          _selectedIndex = -1;
          _shuffleFlutterLogoCardIndex();
        });
      }
    });

    // Using ref.read should be avoided as much as possible.
    // It exists as a work-around for cases where using watch or listen would be otherwise too inconvenient to use.
    // If you can, it is almost always better to use watch/listen, especially watch.
    final gameStateNotifier = ref.watch(gameStateProvider.notifier);

    return ListView.builder(
      itemCount: _numberOfCards,
      itemBuilder: (_, index) {
        final isShowFlutterLogo = index == _flutterLogoCardIndex;
        return PageFlipBuilder(
          key: _pageFlipKeys[index],
          interactiveFlipEnabled: false,
          frontBuilder: (_) => GameCard(
              isFront: true,
              onFlip: () {
                // Handle multitouch
                if (_selectedIndex != -1) {
                  return;
                } else {
                  _selectedIndex = index;
                  _pageFlipKeys[index].currentState?.flip();
                }
              }),
          backBuilder: (_) => GameCard(
            isFront: false,
            isShowFlutterLogo: isShowFlutterLogo,
            onFlip: () {},
          ),
          onFlipComplete: (_) {
            final gameState = ref.read(gameStateProvider);
            if (gameState == const GameState.start()) {
              isShowFlutterLogo
                  ? gameStateNotifier.won()
                  : gameStateNotifier.lost();
            } else if (gameState == const GameState.retry()) {
              gameStateNotifier.start();
            }
          },
        );
      },
    );
  }
}
