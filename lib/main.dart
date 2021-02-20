import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: CustomScrollView(
          slivers: <Widget>[
           SliverStickyHeader(
             header: Container(
               height: 60,
               color: Colors.lightBlue,
               padding: EdgeInsets.symmetric(horizontal: 60),
               alignment: Alignment.centerLeft,
               child: Text(
                 'Header',
                 style: TextStyle(color: Colors.lightBlue),
               ),
             ),
           ),
            SliverStickyHeader(
              header: Container(
                height: 60,
                color: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 60),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Header',
                  style: TextStyle(color: Colors.lightBlue),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
