import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EVENTOS DEPORTIVOS'),
        ),
        body: Center(
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: 300,
              height: 150,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Flutter Card Widget Example',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This is an example of a card widget in Flutter.'
                    'You can use it to create a card like UI component'
                  )
                ],
              )
            ),
          ),)
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}