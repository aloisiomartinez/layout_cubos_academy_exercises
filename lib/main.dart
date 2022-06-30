import 'dart:math';
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
      home: CardNFT(),
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
  double progressPercent = 0;
  Random randomNumbers = Random();
  String text = 'Clique para iniciar o upload';
  bool disableButton = false;

  void progressBarValue() {
    setState(() {
      progress += randomNumbers.nextInt(30);
      progressPercent = progress * 0.01;

      text = progressPercent.toString();

      if (progressPercent >= 1) {
        text = 'Upload Completo';
        disableButton = true;
      } else {
        progressPercent /= 0.01;
        text = '$progressPercent%';
      }
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
        margin: const EdgeInsets.symmetric(vertical: 200),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            FloatingActionButton.extended(
              label: const Text('Upload'),
              icon: const Icon(Icons.upload),
              onPressed: disableButton ? null : progressBarValue,
            ),
            Container(
              margin: const EdgeInsets.all(40.0),
            ),
            Text(text),
            LinearProgressIndicator(
              backgroundColor: Colors.amber,
              value: progress * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}

class CardNFT extends StatelessWidget {
  const CardNFT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ProgressBar'),
        ),
        body: Container(
          color: Colors.blue.shade900,
          child: Card(
            color: Colors.blue.shade900,
            child: Column(
              children: [
                Image.network(
                    'https://camo.githubusercontent.com/dc30ec513e394f4863cdd26fcf702fb5519280a1f2ed33736771477e64d005dc/68747470733a2f2f692e696d6775722e636f6d2f773339717a61712e706e67'),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Equilibrium #3429',
                    style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      'Nossa coleção Equilibrium promove calma e balanço',
                      style: TextStyle(color: Colors.grey)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        '0.041 ETH',
                        style:
                            TextStyle(color: Colors.greenAccent, fontSize: 20),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20, right: 4),
                          alignment: Alignment.centerLeft,
                          child:  const Icon(Icons.watch_later_rounded, color: Colors.grey,)
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          alignment: Alignment.centerLeft,
                          child: const Text(' restam 3 dias',
                              style: TextStyle(color: Colors.grey)),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Divider(color: Colors.grey,),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    children: const [
                      Icon(Icons.person_rounded, size: 40,),
                      SizedBox(width: 10,),
                      Text('Criado por', style: TextStyle(color: Colors.blue)),
                      Text(' Aloisio Martinez', style: TextStyle(color: Colors.white))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
