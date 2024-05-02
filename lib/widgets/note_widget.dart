import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/utils/constants.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteWidget extends StatelessWidget {
  final NoteModel noteModel;
  const NoteWidget({
    super.key,
    required this.noteModel,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 16,
        ),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                noteModel.title,
                style: TextStyle(fontSize: screenWidth / 19),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                ),
                child: Text(
                  noteModel.description,
                  style: TextStyle(
                    color: grey8,
                    fontSize: screenWidth / 26,
                  ),
                ),
              ),
              trailing: Icon(
                FontAwesomeIcons.trash,
                color: white,
                size: screenWidth / 18,
              ),
            ),
            Text(
              noteModel.date,
              style: TextStyle(
                color: grey8,
                fontSize: screenWidth / 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
