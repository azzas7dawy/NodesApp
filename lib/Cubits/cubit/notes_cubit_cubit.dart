import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:notessapp/Models/cardmodel.dart';
import 'package:notessapp/widgets/constants/colors.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  fetchNotes() async {
   
    try {
      var notesBox = Hive.box<CardModel>(kNotesBox);
     
      emit(NotesCubitSuccess(notesBox.values.toList(),));
    } catch (e) {
      emit((NotesCubitFaluire(e.toString())));
    }
  }
}
