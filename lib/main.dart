import 'package:ch1/screen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Home(),
      
    );
  }
}
class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static late List<Widget> _pages;

  _HomeState() {
    _pages = [
    FaceBook(),
      FaceBook(),
      FaceBook(),
      FaceBook(),
      FaceBook(),

      // Search(),

    ];
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
      child: _pages[_selectedIndex],
    ),
      bottomNavigationBar:  Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
              canvasColor: Color(0XFF0b1f31),
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.red,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.black26,))), // sets the inactive color of the `BottomNavigationBar`
          child: BottomNavigationBar(
            elevation: 0,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home',

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline),
            label: 'Home',

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_grocery_store),
            label: 'Home',

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
            label: 'Home',


          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_outlined),
            label: 'Home',


          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    ));
  }
}

