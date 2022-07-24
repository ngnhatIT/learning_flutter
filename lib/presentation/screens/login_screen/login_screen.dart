// import 'package:flutter/material.dart';
// import 'package:learning_bloc/logic/theme_provider.dart';
// import 'package:provider/provider.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login Screen'),
//       ),
//       body: Center(
//         child: Text('${context.watch<ThemeProvider>().count}'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         key: const Key('loginScreen'),
//         onPressed: () => context.read<ThemeProvider>().increment(),
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
