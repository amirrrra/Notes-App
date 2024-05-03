import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/display_note/display_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/app_bar_widget.dart';
import 'package:notes_app/widgets/edit_note_colors_list_widget.dart';
import 'package:notes_app/widgets/text_field_widget.dart';

class EditNoteView extends StatefulWidget {
  final NoteModel noteModel;
  const EditNoteView({
    super.key,
    required this.noteModel,
  });

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, description;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            AppBarWidget(
              onPressed: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.description =
                    description ?? widget.noteModel.description;
                widget.noteModel.save();
                BlocProvider.of<DisplayNoteCubit>(context).displayNote();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextFieldWidget(
              initialValue: widget.noteModel.title,
              hint: "Title",
              onChanged: (value) {
                title = value;
              },
              fontSize: screenWidth / 15,
            ),
            TextFieldWidget(
              initialValue: widget.noteModel.description,
              hint: "Start typing",
              onChanged: (value) {
                description = value;
              },
              fontSize: screenWidth / 25,
              maxLines: 10,
            ),
            EditNoteColorsListWidget(
              noteModel: widget.noteModel,
            ),
          ],
        ),
      ),
    );
  }
}
