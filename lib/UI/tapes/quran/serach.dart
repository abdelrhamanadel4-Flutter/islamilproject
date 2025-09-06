import 'package:flutter/material.dart';
import 'package:projectt/UI/tapes/quran/quran%20resoures.dart';
import 'package:projectt/ultilss/app%20assets.dart';

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = ''; // مسح النص
          showSuggestions(context);
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> filterNames = QuranResoures.arbicandenglish
        .where((element) => element.toLowerCase().startsWith(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: filterNames.length,
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(filterNames[i]),
          onTap: () {
            query = filterNames[i];
            showResults(context);
          },
        );
      },
    );
  }
}
