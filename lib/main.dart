import 'package:flutter/material.dart';
import 'detail_widget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'androi3d',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainActivityWidget(title: 'Flutter 3D World'),
      routes: <String, WidgetBuilder>{
        '/detail': (BuildContext context) => DetailActivityWidget(),
      },
    );
  }
}

class MainActivityWidget extends StatefulWidget {
  MainActivityWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MainActivityState createState() => new MainActivityState();
}

class MainActivityState extends State<MainActivityWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('/detail');
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("Flutter 3D World")],
        ),
      ),
      drawer: Drawer(
          child: ListView(
        padding: const EdgeInsets.all(0.0),
        shrinkWrap: true,
        children: <Widget>[
         /* UserAccountsDrawerHeader(
              accountName: Text("Tohure"),
              accountEmail: Text("cr.htorres@gmail.com")),
         */
          ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text('Hello androi3d'),
            onTap: () {
              // change app state...
              Navigator.pop(context); // close the drawer
            },
          ),
        ],
      )),
    );
  }
}
