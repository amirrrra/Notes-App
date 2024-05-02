import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'display_note_state.dart';

class DisplayNoteCubit extends Cubit<DisplayNoteState> {
  DisplayNoteCubit() : super(DisplayNoteInitial());
}
