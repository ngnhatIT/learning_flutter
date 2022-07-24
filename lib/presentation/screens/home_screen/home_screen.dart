import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        height: sizeScreen.height,
        width: sizeScreen.width,
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
            )),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home)),
      //     BottomNavigationBarItem(icon: Icon(Icons.explore)),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings)),
      //     BottomNavigationBarItem(icon: Icon(Icons.account_circle)),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => context.read<ThemeProvider>().changeTheme()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
