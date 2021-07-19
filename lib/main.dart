import 'package:flutter/material.dart';
import 'package:untitled2/page1.dart';
import 'package:untitled2/page2.dart';
import 'package:untitled2/page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Passcode App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int index = 0;
  String input = "";

  List<Widget> pages = [
    Page1(),
    Page2(),
    Page3()
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Home")
        ],
        currentIndex: index,
        onTap: (tappedIndex)=>{
          setState((){
            index = tappedIndex;
          })
        } ,
      ),
      body: pages[index],
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


