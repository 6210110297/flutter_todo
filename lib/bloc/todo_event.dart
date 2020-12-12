part of 'todo_bloc.dart';

abstract class TodoEvent {}

class TodoInitial extends TodoEvent {}

class TodoToggle extends TodoEvent {
  int index;
  TodoToggle({this.index});
}
