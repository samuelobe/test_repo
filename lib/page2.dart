import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page 2"),),
      body: Center(
        child: GestureDetector(
          onTap: ()=>{},
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.purple,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
