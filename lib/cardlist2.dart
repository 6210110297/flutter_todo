import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/bloc/tab_bloc.dart';
import 'package:flutter_todo/bloc/todo_bloc.dart';
import 'package:flutter_todo/widget/checklist.dart';
import 'package:flutter_todo/widget/checklist2.dart';

class CardList2 extends StatelessWidget {
  final int nowindex = 4;
  bool checkTodo = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => TodoBloc()..add(TodoInitial()),
        child: Scaffold(
          body: BlocBuilder<TodoBloc, TodoState>(
            builder: (context, state) {
              return ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: state.todos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        height: 50,
                        child: Card(
                            child: Center(
                              child: CheckBox2(
                                index: index,
                              ),
                            ),
                            color: Colors.grey[300]));
                  });
            },
          ),
          //floatingActionButton: FloatingActionButton(onPressed: (),),
        ));
  }
}
