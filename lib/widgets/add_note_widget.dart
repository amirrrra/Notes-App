import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/widgets/add_note_form_widget.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
          if (state is AddNoteFailure) {
            "failure: ${state.errorMessage}";
          }
        },
        builder: (context, state) {
          // AbsorbPointer: Prevents you from handling the screen
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SingleChildScrollView(
                child: AddNoteFormWidget(),
              ),
            ),
          );
        },
      ),
    );
  }
}
