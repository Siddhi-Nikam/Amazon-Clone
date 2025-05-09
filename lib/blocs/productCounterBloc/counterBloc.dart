// counter_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counterEvent.dart';
import 'counterState.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 1)) {
    on<IncrementCounter>((event, emit) {
      emit(state.copyWith(counter: state.counter + 1));
    });

    on<DecrementCounter>((event, emit) {
      if (state.counter > 1) {
        emit(state.copyWith(counter: state.counter - 1));
      }
    });
  }
}
