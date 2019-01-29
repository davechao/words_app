import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MyWords extends StatelessWidget {
  final Set<WordPair> saveWords;

  MyWords(this.saveWords);

  List<Widget> _buildDividedList(BuildContext context) {
    final Iterable<ListTile> tiles = saveWords.map(
      (WordPair pair) {
        return ListTile(
          title: Text(
            pair.asPascalCase,
            style: TextStyle(fontSize: 18.0),
          ),
        );
      },
    );
    return ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Words'),
      ),
      body: ListView(
        children: _buildDividedList(context),
      ),
    );
  }
}
