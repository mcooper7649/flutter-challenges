import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _isWinner = false;

  void _changeWinner() {
    setState(() {
      _isWinner = !_isWinner;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
      ),
      body: _isWinner
          ? Center(
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.amber, onPrimary: Colors.blueAccent),
                    child: const Text('Loser'),
                    onPressed: _changeWinner,
                  )
                ],
              ),
            )
          : Center(
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.amber, onPrimary: Colors.blueAccent),
                    child: const Text('Winner'),
                    onPressed: _changeWinner,
                  )
                ],
              ),
            ),
    ));
  }
}
