import 'package:flutter/material.dart';

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
class CheckBox extends StatefulWidget {
  String label;
  CheckBox({Key key, this.label}) : super(key: key);

  @override
  _CheckBoxState createState() => _CheckBoxState(label: this.label);
}

/// This is the private State class that goes with CheckBox.
class _CheckBoxState extends State<CheckBox> {
  bool _isSelected = false;
  String label;

  _CheckBoxState({this.label});

  @override
  Widget build(BuildContext context) {
    return LabeledCheckbox(
      label: label,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      value: _isSelected,
      onChanged: (bool newValue) {
        setState(() {
          _isSelected = newValue;
        });
      },
    );
  }
}
