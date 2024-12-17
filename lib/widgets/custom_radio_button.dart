import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  final String label;
  final String groupValue;
  final Function(String?) onChanged;

  const CustomRadioButton({
    required this.label,
    required this.groupValue,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String>(
          value: widget.label,
          groupValue: widget.groupValue,
          onChanged: widget.onChanged,
        ),
        Text(widget.label),
      ],
    );
  }
}
