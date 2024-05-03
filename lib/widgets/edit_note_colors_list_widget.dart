import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/utils/constants.dart';
import 'package:notes_app/widgets/color_widget.dart';

class EditNoteColorsListWidget extends StatefulWidget {
  final NoteModel noteModel;
  const EditNoteColorsListWidget({
    super.key,
    required this.noteModel,
  });

  @override
  State<EditNoteColorsListWidget> createState() =>
      _EditNoteColorsListWidgetState();
}

class _EditNoteColorsListWidgetState extends State<EditNoteColorsListWidget> {
  late int currentIndex;
  @override
  void initState() {
    // Make the color of the note == the selected color
    currentIndex = colorsList.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return ColorWidget(
            color: colorsList[index],
            isActive: currentIndex == index,
            onTap: () {
              currentIndex = index;
              // Set the picked color to the note color
              widget.noteModel.color = colorsList[index].value;
              setState(() {});
            },
          );
        },
      ),
    );
  }
}
