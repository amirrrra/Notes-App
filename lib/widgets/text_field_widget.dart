import 'package:flutter/material.dart';
import 'package:notes_app/utils/constants.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final int maxLines;
  final double fontSize;
  final void Function(String?)? onSaved;

  const TextFieldWidget({
    super.key,
    required this.hint,
    this.maxLines = 1,
    required this.fontSize,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) => value?.isEmpty ?? true ? "Field is required" : null,
      cursorColor: cyan,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: fontSize,
          color: grey8,
        ),
        border: InputBorder.none,
      ),
      autofocus: true,
      onTapOutside: (pointer) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
