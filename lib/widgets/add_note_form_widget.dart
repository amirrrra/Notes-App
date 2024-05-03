import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/utils/constants.dart';
import 'package:notes_app/widgets/button_widget.dart';
import 'package:notes_app/widgets/add_note_colors_list_widget.dart';
import 'package:notes_app/widgets/text_field_widget.dart';

class AddNoteFormWidget extends StatefulWidget {
  const AddNoteFormWidget({
    super.key,
  });

  @override
  State<AddNoteFormWidget> createState() => _AddNoteFormWidgetState();
}

class _AddNoteFormWidgetState extends State<AddNoteFormWidget> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? description;
  var date = DateTime.now();
  var dateFormat = DateFormat('dd-MM-yyyy hh:mm a');

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextFieldWidget(
            hint: 'Title',
            fontSize: screenWidth / 15,
            onSaved: (value) {
              title = value;
            },
          ),
          TextFieldWidget(
            hint: 'Start typing',
            fontSize: screenWidth / 25,
            maxLines: 10,
            onSaved: (value) {
              description = value;
            },
          ),
          const AddNoteColorsListWidget(),
          const SizedBox(
            height: 30,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return ButtonWidget(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var formattedDate = dateFormat.format(date);
                    NoteModel noteModel = NoteModel(
                      title: title!,
                      description: description!,
                      date: formattedDate,
                      color: babyBrown.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
