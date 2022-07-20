import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class BlocBloc extends Bloc<BlocEvent, BlocState> {
  BlocBloc() : super(BlocInitial()) {
    on<BlocEvent>((event, emit) async {
      await emit.onEach<int>(stream, onData: (tick) => add(_BlocTicked(tick)));
    });
  }
}
