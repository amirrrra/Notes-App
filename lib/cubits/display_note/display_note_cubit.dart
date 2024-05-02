import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/utils/constants.dart';

part 'display_note_state.dart';

class DisplayNoteCubit extends Cubit<DisplayNoteState> {
  DisplayNoteCubit() : super(DisplayNoteInitial());
  displayNote() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      // Iterable<E> => Collection of E
      List<NoteModel> notesList = notesBox.values.toList();
      emit(DisplayNoteSuccess(notesList: notesList));
    } catch (e) {
      emit(DisplayNoteFailure(errorMessage: e.toString()));
    }
  }
}
