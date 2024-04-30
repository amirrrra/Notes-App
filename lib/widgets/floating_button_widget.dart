import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/add_note_widget.dart';

class FloatingButtonWidget extends StatelessWidget {
  const FloatingButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: FloatingActionButton(
        backgroundColor: cyan,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: grey24,
            context: context,
            builder: (context) {
              return const AddNoteWidget();
            },
          );
        },
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
