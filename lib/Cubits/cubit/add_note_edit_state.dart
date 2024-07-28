part of 'add_note_edit_cubit.dart';

@immutable
sealed class AddNoteEditState {}

final class AddNoteEditInitial extends AddNoteEditState {}

final class AddNoteEditLodeding extends AddNoteEditState {}

final class AddNoteEditSuccess extends AddNoteEditState {
  AddNoteEditSuccess();
}

final class AddNoteEditFlauiler extends AddNoteEditState {
  final String errorMessage;
  AddNoteEditFlauiler(this.errorMessage);
}
