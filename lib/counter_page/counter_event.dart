import 'package:equatable/equatable.dart';

class CounterEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CounterIncrementEvent extends CounterEvent {
  int incCount;
  CounterIncrementEvent({required this.incCount});

  @override
  // TODO: implement props
  List<Object?> get props => [incCount];
}

class CounterDecrementEvent extends CounterEvent {
  int decCount;
  CounterDecrementEvent({required this.decCount});
  @override
  // TODO: implement props
  List<Object?> get props => [decCount];
}
