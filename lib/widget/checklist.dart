import 'package:flutter/material.dart';

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    this.label,
    this.padding,
    this.value,
    this.onChanged,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Checkbox(
              value: value,
              onChanged: (bool newValue) {
                onChanged(newValue);
              },
            ),
            Expanded(child: Text(label)),
          ],
        ),
      ),
    );
  }
}

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
