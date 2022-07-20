part of 'bloc_bloc.dart';

@immutable
abstract class BlocEvent extends Equatable {
  const BlocEvent();
  @override
  List<Object> get props => [];
}

class BlocStarted extends BlocEvent {
  const BlocStarted();
}

class _BlocTicked extends BlocEvent {
  const _BlocTicked(this.tick);
  final int tick;
  @override
  List<Object> get props => [tick];
}
