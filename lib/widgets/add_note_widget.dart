import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_form_widget.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: SingleChildScrollView(
        child: AddNoteFormWidget(),
      ),
    );
  }
}
