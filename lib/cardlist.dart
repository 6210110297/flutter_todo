import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo/widget/checklist.dart';

class CardList extends StatelessWidget {
  final int nowindex = 4;
  bool checkTodo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: nowindex,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                height: 50,
                child: Card(
                    child: Center(
                      child: CheckBox(
                        label: 'Todo ${index + 1}',
                      ),
                    ),
                    color: Colors.grey[300]));
          }),
      //floatingActionButton: FloatingActionButton(onPressed: (),),
    );
  }
}
