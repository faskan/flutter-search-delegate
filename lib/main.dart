import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: TextFormField(
        decoration: InputDecoration(
          suffixIcon: IconButton(onPressed: () async {
            String? result = await showSearch<String?>(context: context, delegate: CustomSearchDelegate());
            if(result != null){
              print(result);
            }
          }, icon: const Icon(Icons.search),)
        ),
      ),
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
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Text(index.toString()));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}