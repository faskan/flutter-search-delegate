import 'package:flutter/material.dart';
import 'package:todoapp/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}



class CustomSearchDelegate extends SearchDelegate<String?> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return null;
  }

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        icon: const BackButtonIcon(),
        onPressed: () {
          close(context, null);
        },
      );

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(itemCount: 10, itemBuilder: (context, index) => Text(index.toString()));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
