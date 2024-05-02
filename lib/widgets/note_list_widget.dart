import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/display_note/display_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_widget.dart';

class NoteListWidget extends StatelessWidget {
  const NoteListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplayNoteCubit, DisplayNoteState>(
      builder: (context, state) {
        List<NoteModel> notesList = BlocProvider.of<DisplayNoteCubit>(context).notesList!;
        return Expanded(
          child: ListView.builder(
            itemCount: notesList.length,
            padding: const EdgeInsets.all(0),
            itemBuilder: (BuildContext context, int index) {
              return const NoteWidget();
            },
          ),
        );
      },
    );
  }
}
