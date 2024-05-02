import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/display_note/display_note_cubit.dart';
import 'package:notes_app/widgets/floating_button_widget.dart';
import 'package:notes_app/widgets/note_list_widget.dart';
import 'package:notes_app/widgets/search_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  void initState() {
    BlocProvider.of<DisplayNoteCubit>(context).displayNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
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
