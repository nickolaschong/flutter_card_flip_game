import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

part 'game_state.freezed.dart';

final gameStateProvider = StateNotifierProvider<GameStateNotifier, GameState>(
    (ref) => GameStateNotifier());

@freezed
class GameState with _$GameState {
  const factory GameState.start() = Start;
  const factory GameState.retry() = Retry;
  const factory GameState.won() = Won;
  const factory GameState.lost() = Lost;
}

class GameStateNotifier extends StateNotifier<GameState> {
  GameStateNotifier() : super(const GameState.start());

  void start() {
    state = const GameState.start();
  }

  void retry() {
    state = const GameState.retry();
  }

  void won() {
    state = const GameState.won();
  }

  void lost() {
    state = const GameState.lost();
  }
}
