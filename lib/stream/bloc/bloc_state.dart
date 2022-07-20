part of 'bloc_bloc.dart';

@immutable
abstract class BlocState extends Equatable {
  const BlocState();
  @override
  List<Object?> get props => [];
}

class BlocInitial extends BlocState {}

class BlocSuccess extends BlocState {
  /// {@macro ticker_tick_success}
  const BlocSuccess(this.count);

  /// The current tick count.
  final int count;

  @override
  List<Object> get props => [count];
}

class BlocComplete extends BlocState {
  /// {@macro ticker_complete}
  const BlocComplete();
}
