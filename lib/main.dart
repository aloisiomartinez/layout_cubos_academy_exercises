import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MenuDrawer(),
    );
  }
}

class MyAppAppBar extends StatelessWidget {
  const MyAppAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.coffee),
          onPressed: () {},
          color: Colors.brown,
        ),
        title: const Text(
          'Coffee',
          style: TextStyle(color: Colors.brown),
        ),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Container(),
    );
  }
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu Drawer',
          style: TextStyle(color: Colors.pink.shade100),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.pink.shade100,
        child: ListView(
          children: [
            ListTile(
              leading: const FlutterLogo(),
              title: const Text('Flutter'),
              subtitle: const Text('Tudo são Widgets'),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.face, color: Colors.red),
              title: const Text('Dart'),
              subtitle: const Text('É muito forte'),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.coffee, color: Colors.brown),
              title: const Text('Cafessineo'),
              subtitle: const Text('Quero cafééé'),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
        ],
      ),
    );
  }
}