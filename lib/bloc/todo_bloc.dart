import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_todo/todo.dart';
import 'package:meta/meta.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  List<Todo> todos;
  TodoBloc(this.todos) : super(TodoState());

  @override
  Stream<TodoState> mapEventToState(
    TodoEvent event,
  ) async* {
    if (event is TodoInitial) {
      yield TodoState(
        todos: mock,
      );
    }
  }
}

final List<Todo> mock = <Todo>[
  Todo(id: '1', complete: false, task: 'a', note: 'hello a'),
  Todo(id: '2', complete: false, task: 'b', note: 'hello b'),
  Todo(id: '3', complete: true, task: 'c', note: 'hello c'),
  Todo(id: '4', complete: false, task: 'd', note: 'hello d'),
];
