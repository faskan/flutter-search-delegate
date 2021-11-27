import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String userName = "admin";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Column(
        children: [
          TextFormField(
              decoration: InputDecoration(label: Text("Username")),
              onChanged: (value) => setState(() {
                userName = value;
              })),
          TextFormField(
              decoration: InputDecoration(label: Text("Password")),
              onChanged: (value) => setState(() {
                password = value;
              })),
          ElevatedButton(
            onPressed: () {
              if(userName == 'admin' && password == 'admin') {
                print('success');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Failure')),
                );
              }
            },
            child: const Text('Submit'),
          )
        ],
      ),
    );
  }
}