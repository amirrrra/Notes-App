import 'package:flutter/material.dart';
import 'package:notes_app/widgets/floating_button_widget.dart';
import 'package:notes_app/widgets/note_list_widget.dart';
import 'package:notes_app/widgets/search_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:  Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SearchWidget(),
            NoteListWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingButtonWidget(),
    );
  }
}


