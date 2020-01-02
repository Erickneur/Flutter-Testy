import 'package:flutter/material.dart';
import 'package:tabs/firstpage.dart' as firstpage;
import 'package:tabs/secondpage.dart' as secondpage;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.teal,
      ),
      bottomNavigationBar: new Material(
        color: Colors.teal,
        child: new Container(
          height: 60.0,
          child: new TabBar(
            controller: controller,
            tabs: <Widget>[
                new Tab(icon: new Icon(Icons.access_alarm)),
                new Tab(icon: new Icon(Icons.account_balance)),
            ]
          ),
        )
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new firstpage.FirstPage(),
          new secondpage.SecondPage()
        ],
      )
    );
  }
}
