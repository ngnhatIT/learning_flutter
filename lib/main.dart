import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/providers/provider.dart';
import 'presentation/screens/screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, value, child) => MaterialApp(
          home: HomeScreen(),
          themeMode: value.themeMode,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
        ),
      ),
    );
  }
}
