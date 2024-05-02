import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/utils/constants.dart';

part 'display_note_state.dart';

class DisplayNoteCubit extends Cubit<DisplayNoteState> {
  DisplayNoteCubit() : super(DisplayNoteInitial());

  List<NoteModel>? notesList;

  displayNote() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    // Iterable<E> => Collection of E
    notesList = notesBox.values.toList();

    // Once displayNote is called => DisplayNoteSuccess is emitted
    emit(DisplayNoteSuccess());
  }
}
