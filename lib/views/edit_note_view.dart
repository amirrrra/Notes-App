import 'package:flutter/material.dart';
import 'package:notes_app/widgets/app_bar_widget.dart';
import 'package:notes_app/widgets/text_field_widget.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
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
          ],
        ),
      ),
    );
  }
}
