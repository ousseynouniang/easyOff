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
      appBar: PreferredSize(
          child: SafeArea(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.menu,
                      size: 40.0,
                    ),
                    Text(
                      'EasyFix App',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Icon(
                      Icons.supervised_user_circle,
                      size: 40.0,
                    )
                  ],
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(100)),
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
