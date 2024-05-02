part of 'display_note_cubit.dart';

@immutable
sealed class DisplayNoteState {}

final class DisplayNoteInitial extends DisplayNoteState {}

// Once DisplayNoteSuccess is emitted => UI is rebuilt
final class DisplayNoteSuccess extends DisplayNoteState {}

