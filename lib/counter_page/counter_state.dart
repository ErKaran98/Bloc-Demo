import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CounterInitialState extends CounterState {
  int? count;
  CounterInitialState({required this.count});

  List<Object?> get props => [count];
}

class CounterIncrementState extends CounterState {
  int? incCount;

  CounterIncrementState({required this.incCount});
  List<Object?> get props => [incCount];
}

class CounterDecementState extends CounterState {
  int? decCount;

  CounterDecementState({required this.decCount});
  List<Object?> get props => [decCount];
}
