import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo/bloc/todo_bloc.dart';
import 'package:flutter_todo/todo.dart';

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    this.label,
    this.padding,
    this.value,
    this.onChanged,
  });

  _delete() {}

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                onChanged(!value);
              },
              child: Checkbox(
                value: value,
                onChanged: (bool newValue) {
                  onChanged(newValue);
                },
              ),
            ),
            Expanded(child: Text(label)),
            IconButton(
              hoverColor: Colors.white,
              icon: Icon(Icons.clear),
              onPressed: _delete(),
              tooltip: 'Delete',
            )
          ],
        ),
      ),
    );
  }
}
//icon button
//https://api.flutter.dev/flutter/material/IconButton-class.html

/// This is the stateful widget that the main application instantiates.
class CheckBox2 extends StatelessWidget {
  int index;
  CheckBox2({this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        return LabeledCheckbox(
            label: state.todos[index].task,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            value: state.todos[index].complete,
            onChanged: (bool newValue) {
              state.todos[index].complete = newValue;
            });
      },
    );
  }
}
