import 'package:bloc_demo/counter_page/counter_bloc.dart';
import 'package:bloc_demo/counter_page/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';

class CounterPage extends StatelessWidget {
  int counter = 0;
  CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter app using bloc')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<CounterBloc,CounterState>(
              builder: (context, state) {
                if (state is CounterInitialState) {
                  return Text(
                    state.count.toString(),
                    style: TextStyle(fontSize: 24),
                  );
                } else if (state is CounterIncrementState) {
                  return Text(
                    state.incCount.toString(),
                    style: TextStyle(fontSize: 24),
                  );
                } else if (state is CounterDecementState) {
                  return Text(
                    state.decCount.toString(),
                    style: TextStyle(fontSize: 24),
                  );
                } else {
                  return Container();
                }
              },

              listener: (context, state) {
                if (state is CounterIncrementState) {
                  var snackBar = SnackBar(content: Text('Incremented'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else if (state is CounterDecementState) {
                  var snackBar = SnackBar(content: Text('Decremented'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(
                      context,
                    ).add(CounterIncrementEvent(incCount: counter++));
                  },
                  child: Text("+", style: TextStyle(fontSize: 24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(
                      context,
                    ).add(CounterDecrementEvent(decCount: counter--));
                  },
                  child: Text("-", style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
