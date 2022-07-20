import 'package:flutter/material.dart';
import 'package:learning_bloc/counter/view/counter_page.dart';

class App extends MaterialApp {
  const App({Key? key}) : super(key: key, home: const CounterPage());
}
