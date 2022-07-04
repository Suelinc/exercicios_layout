import 'package:flutter/material.dart';

void main() {
  runApp(const MenuDrawer());
}

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pinkAccent.shade700,
            title: Text('Menu Drawer',
                style: TextStyle(color: Colors.pink.shade100, fontSize: 25.0)),
          ),
          endDrawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                  ),
                  child: const Text(
                    'Menu Drawer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                    leading: const Icon(
                      Icons.flash_on,
                      color: Colors.blueAccent,
                    ),
                    title: const Text('Flutter', style: TextStyle()),
                    subtitle: const Text('Tudo são Widgets'),
                    trailing:
                        const Icon(Icons.arrow_forward_ios_sharp, size: 20.0),
                    onTap: () {},),
                ListTile(
                    leading: const Icon(Icons.emoji_emotions_outlined,
                        color: Colors.redAccent),
                    title: const Text(' Dart'),
                    subtitle: const Text('É muito forte'),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp, size: 20.0),
                    onTap: () {},),
                ListTile(
                  leading: const Icon(Icons.coffee, color: Colors.brown),
                  title: const Text('Cafessineo'),
                  subtitle: const Text('Quero cafééé'),
                  trailing: const Icon(Icons.arrow_forward_ios_sharp, size: 20.0),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ));
  }
}
