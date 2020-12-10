import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  height: 50,
                  child: Card(
                      child: Center(
                        child: Text('Todo ${index + 1}'),
                      ),
                      color: Colors.amber[200]));
            }),
            floatingActionButton: FloatingActionButton(
              ,),);
  }
}
