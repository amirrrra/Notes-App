import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/utils/constants.dart';
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
            onSaved: (value) {
              title = value;
            },
          ),
          TextFieldWidget(
            hint: 'Start typing',
            fontSize: screenWidth / 25,
            maxLines: 10,
            onSaved: (value) {
              description = value;
            },
          ),
          const SizedBox(
            height: 40,
          ),
          ButtonWidget(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                NoteModel noteModel = NoteModel(
                  title: title!,
                  description: description!,
                  date: DateTime.now().toString(),
                  color: cyan.value,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
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
