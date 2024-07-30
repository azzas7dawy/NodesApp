import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notessapp/Cubits/cubit/notes_cubit_cubit.dart';
import 'package:notessapp/Models/cardmodel.dart';
import 'package:notessapp/views/editNotebody.dart';
import 'package:notessapp/widgets/iconsearch.dart';
// import 'package:notessapp/widgets/modelButtonNotes.dart';

// ignore: must_be_immutable
class EditCardView extends StatelessWidget {
  EditCardView({
    super.key,
    required this.note,
    this.onPressed,
  });
  final CardModel note;
  final void Function()? onPressed;

  String? title;

  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        title: const Text("Edit Note"),
        actions: [
          CustomSearchWidget(
            icon: Icons.check,
            onPressed: () {
              if (title != null) {
                note.title = title!;
              }

              note.title = title ?? note.title;

              note.content = subTitle ?? note.content;
              note.save();
              BlocProvider.of<NotesCubitCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
          ),
        ],
      ),
      
      body: EditNoteBodyView(
        note: note,
      ),
    );
  }
}
