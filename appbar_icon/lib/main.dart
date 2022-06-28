import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppBar());
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MyAppBar',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellowAccent.shade100,
            leading: const Icon(Icons.coffee_outlined, color: Colors.brown, size: 45.0),
            title: const Text('Coffee', style: TextStyle(color: Colors.brown, fontSize: 35.0 )),

          ),
        )
        );
  }
}

