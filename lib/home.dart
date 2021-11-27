import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String username;
  late String password;
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
            onChanged: (value) => setState((){
              username = value;
            }),
          ),
          TextFormField(
            decoration: InputDecoration(label: Text("Password")),
            onChanged: (value) => setState((){
              password = value;
            }),
          ),
          ElevatedButton(
            onPressed: () {
              submit(username, password);
            },
            child: const Text('Submit'),
          )
        ],
      ),
    );
  }
}

void submit(String username, String password) {
  if(username == "admin" && password == "admin") {
    print("success");
  } else {
    print("failure");
  }
}