part of 'display_note_cubit.dart';

@immutable
sealed class DisplayNoteState {}

final class DisplayNoteInitial extends DisplayNoteState {}

final class DisplayNoteLoading extends DisplayNoteState {}

final class DisplayNoteSuccess extends DisplayNoteState {
  final List<NoteModel> notesList;

  DisplayNoteSuccess({required this.notesList});
}

final class DisplayNoteFailure extends DisplayNoteState {
  final String errorMessage;

  DisplayNoteFailure({required this.errorMessage});
}
