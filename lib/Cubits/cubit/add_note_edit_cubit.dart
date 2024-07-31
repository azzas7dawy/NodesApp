import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:notessapp/Models/cardmodel.dart';
import 'package:notessapp/widgets/constants/colors.dart';

part 'add_note_edit_state.dart';

class AddNoteEditCubit extends Cubit<AddNoteEditState> {
  AddNoteEditCubit() : super(AddNoteEditInitial());
  Color color = const Color(0xffffc2e2);

  Future addNote(CardModel note) async {
    note.color = color.value;
    emit(AddNoteEditLodeding());
    try {
      var notesBox = await Hive.box<CardModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteEditSuccess());
    } catch (e) {
      emit(AddNoteEditFlauiler(e.toString()));
    }
  }
}
