import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_widget.dart';

class NoteListWidget extends StatelessWidget {
  const NoteListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemBuilder: (BuildContext context, int index) {
          return const NoteWidget();
        },
      ),
    );
  }
}
