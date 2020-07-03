import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/bloc/counter/counter_state.dart';
import 'package:flutter_bloc_demo/page/home/home_page.dart';

import 'bloc/counter/counter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CounterBloc(UninitializedCounterState()),
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
  }
}
