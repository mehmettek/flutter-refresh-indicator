import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Refresh Indicator "),),
      body:new RefreshIndicator(
       child: Text(number.toString(),style: TextStyle(fontSize: 25.0),),
       onRefresh: refreshpage, 
    ), 

    );
  }

  Future<Null> refreshpage() async {
    await new Future.delayed(new Duration(seconds: 2));
    setState(() {
      number +=5;
    });
    return null;
  }
}
