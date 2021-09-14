import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String?> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return null;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return null;
  }

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
