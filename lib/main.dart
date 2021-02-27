import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        child:Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverStickyHeader(
                header: Container(
                  height: 140,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "WALLET",
                        style: TextStyle(color: Colors.black,
                        fontSize: 30),
                      ),
                      IconButton( icon: Icon(FontAwesomeIcons.wallet, color: Colors.black,), onPressed: (){

                      })
                    ],
                  )
                  ,
                ),
              ),
              SliverStickyHeader(
                  header: Container(
                    height: 60,
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Header 1",
                      style: TextStyle(color: Colors.red),
                    )
                    ,
                  ),
              ),
              SliverStickyHeader(
                header: Container(
                  height: 60,
                  color: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Header 2",
                    style: TextStyle(color: Colors.white),
                  )
                  ,
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
