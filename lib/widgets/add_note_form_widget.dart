import 'package:flutter/material.dart';
import 'package:notes_app/widgets/button_widget.dart';
import 'package:notes_app/widgets/text_field_widget.dart';

class AddNoteFormWidget extends StatefulWidget {
  const AddNoteFormWidget({
    super.key,
  });

  @override
  State<AddNoteFormWidget> createState() => _AddNoteFormWidgetState();
}

class _AddNoteFormWidgetState extends State<AddNoteFormWidget> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? description;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextFieldWidget(
            hint: 'Title',
            fontSize: screenWidth / 15,
          ),
          TextFieldWidget(
            hint: 'Start typing',
            fontSize: screenWidth / 25,
            maxLines: 10,
          ),
          const SizedBox(
            height: 40,
          ),
          ButtonWidget(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
