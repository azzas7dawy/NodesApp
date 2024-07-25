import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'add_note_edit_state.dart';

class AddNoteEditCubit extends Cubit<AddNoteEditState> {
  AddNoteEditCubit() : super(AddNoteEditInitial());
 


}
