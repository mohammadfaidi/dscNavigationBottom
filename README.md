# dsctask4

A new Flutter project.



help task :



https://codewithandrea.com/articles/bottom-bar-navigation-with-fab/

https://github.com/bizz84/bottom_bar_fab_flutter

https://codewithandrea.com/articles/bottom-bar-navigation-with-fab/

https://medium.com/codechai/flutter-7-bottom-navigation-with-floating-button-9190648372fd


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Floating',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Float'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
          ],
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _cIndex,
        type: BottomNavigationBarType.fixed ,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Color.fromARGB(255, 0, 0, 0)),
            title: new Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.power,color: Color.fromARGB(255, 0, 0, 0)),
            title: new Text('Power')
          )
        ],
        onTap: (index){
            _incrementTab(index);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: new FloatingActionButton(
        
        onPressed:(){ _incrementTab(1); },
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), 
    );
  }
}




https://material.io/components/app-bars-bottom/flutter#theming





https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html


