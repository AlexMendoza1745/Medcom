import 'package:flutter/material.dart';

class custom_textField extends StatelessWidget {
  final String labeltextP;
  final String hintextP;
  final IconData iconP;
  final String formProperty;
  final Map<String, String> formValue;

  const custom_textField({
    Key? key,
    required this.labeltextP,
    required this.hintextP,
    required this.iconP,
    required this.formProperty,
    required this.formValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        formValue[formProperty] = value;
      },
      decoration: InputDecoration(
          labelText: labeltextP,
          hintText: hintextP,
          icon: Icon(iconP),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)))),
    );
  }
}
