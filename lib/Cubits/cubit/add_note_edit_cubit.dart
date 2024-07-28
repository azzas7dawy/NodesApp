import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notessapp/Models/cardmodel.dart';
import 'package:notessapp/widgets/constants/colors.dart';

part 'add_note_edit_state.dart';

class AddNoteEditCubit extends Cubit<AddNoteEditState> {
  AddNoteEditCubit() : super(AddNoteEditInitial());

 Future addNote(CardModel note) async {
    emit(AddNoteEditLodeding());
    try {
      var notesBox =await Hive.box<CardModel>(kNotesBox);
     await notesBox.add(note);
      emit(AddNoteEditSuccess());
      
    } catch (e) {
      emit(AddNoteEditFlauiler(e.toString()));
    }
  }
}
