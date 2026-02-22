import 'package:bloc_demo/counter_page/counter_event.dart';
import 'package:bloc_demo/counter_page/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitialState(count: 0)) {
    /// on increment event
    on<CounterIncrementEvent>((event, emit) {
      emit(CounterIncrementState(incCount: event.incCount + 1));
    });

    /// on decement event
    on<CounterDecrementEvent>((event, emit) {
      emit(CounterDecementState(decCount: event.decCount - 1));
    });
  }
}
