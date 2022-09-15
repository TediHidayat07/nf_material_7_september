import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nf_material_7_september',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Statefull Widget Demo'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              number.toString(),
              style: TextStyle(
                fontSize: 10 + number.toDouble(),
              ),
            ),
            // ignore: deprecated_member_use
            RaisedButton(
                onPressed: tekanTombol, child: const Text('Tambah Bilangan'))
          ],
        )),
      ),
    );
  }
}
