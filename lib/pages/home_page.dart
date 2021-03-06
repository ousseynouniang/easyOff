import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'EasyFix Home Page',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blue,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.blue,
        height: 60,
        items: <Widget>[
          Icon(Icons.home, size: 20, color: Colors.white),
          Icon(Icons.add, size: 20, color: Colors.white),
          Icon(Icons.shopping_cart, size: 20, color: Colors.white),
          Icon(Icons.favorite, size: 20, color: Colors.white),
        ],
        animationDuration: Duration(milliseconds: 200),
        index: 2,
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          debugPrint("Current index is $index");
        },
      ),
    );
  }
}
