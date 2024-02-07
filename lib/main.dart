import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.home, size: 48.0),
        Text('Home Page'),
        Container(
          margin: EdgeInsets.all(10.0),
          color: Colors.blue,
          width: 48.0,
          height: 48.0,
        ),
      ],
    ),

    
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.account_box, size: 48.0),
        Text('Perfil Page'),
      ],
    ),


    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.add_location_sharp, size: 48.0),
        Text('Lugares Page'),
        Text('Mexico'),
        Text('Canada'),
        Text('USA'),
      ],
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de navegacion'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location_sharp),
            label: 'Lugares',
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 7, 176, 227),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
