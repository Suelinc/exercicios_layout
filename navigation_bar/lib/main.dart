import 'package:flutter/material.dart';

void main() {
  runApp(const MyNavigationBar());
}

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyNavigationBar> createState() => NavigationState();
}

class NavigationState extends State<MyNavigationBar> {
  // This widget is the root of your application.
  int index = 0;
  void setIndex(int valor) {
    setState(() {
      index = valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey[300],
            currentIndex: index,
            onTap: setIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Configurações"),
              BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
            ],
          ),
        ));
  }
}
