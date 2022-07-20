import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_bloc/app_bloc_service.dart';
import 'app.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(const App()),
      blocObserver: AppBlocService());
}
