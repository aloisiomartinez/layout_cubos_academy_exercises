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
      home: ProgressBarExercise(),
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
      endDrawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.pink.shade100,
          child: ListView(
            children: [
              ListTile(
                leading: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Icon(
                      Icons.flash_on,
                      color: Colors.blue,
                      size: 40,
                    )),
                title: const Text('Flutter'),
                subtitle: const Text('Tudo são Widgets'),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {},
              ),
              ListTile(
                leading: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Icon(Icons.mood, color: Colors.red, size: 40),
                ),
                title: const Text('Dart'),
                subtitle: const Text('É muito forte'),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {},
              ),
              ListTile(
                leading: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Icon(Icons.coffee, color: Colors.brown, size: 40),
                ),
                title: const Text('Cafessineo'),
                subtitle: const Text('Quero cafééé'),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {},
              ),
            ],
          ),
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

class ProgressBarExercise extends StatefulWidget {
  
  const ProgressBarExercise({Key? key}) : super(key: key);

  @override
  State<ProgressBarExercise> createState() => _ProgressBarExerciseState();
}



class _ProgressBarExerciseState extends State<ProgressBarExercise> {
  double progress = 0;

  void progressBarValue() {
    setState(() {
      progress += 0.2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProgressBar'),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(
          vertical: 200
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            FloatingActionButton.extended(
              label: const Text('Upload'),
              icon: const Icon(Icons.upload),
              onPressed: progressBarValue,
            ),
            Container(margin: const EdgeInsets.all(10.0),),
             LinearProgressIndicator(
              backgroundColor: Colors.amber,
              value: progress,
            ),
          ],
        ),
      ),
    );
  }
}
