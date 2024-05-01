import 'package:flutter/material.dart';
import 'package:notes_app/widgets/button_widget.dart';
import 'package:notes_app/widgets/text_field_widget.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: SingleChildScrollView(
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
            const ButtonWidget(),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
