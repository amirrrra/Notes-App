import 'package:flutter/material.dart';
import 'package:notes_app/utils/constants.dart';
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
        backgroundColor: babyBrown,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          size: 35,
          // color: white,
        ),
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
      ),
    );
  }
}
