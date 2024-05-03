import 'package:flutter/material.dart';
import 'package:notes_app/utils/constants.dart';

class TextFieldWidget extends StatelessWidget {
  final String? initialValue;
  final String hint;
  final int maxLines;
  final double fontSize;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;

  const TextFieldWidget({
    super.key,
    required this.hint,
    this.maxLines = 1,
    required this.fontSize,
    this.onSaved,
    this.onChanged,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) => value?.isEmpty ?? true ? "Field is required" : null,
      cursorColor: babyBrown,
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
