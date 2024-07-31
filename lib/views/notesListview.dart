
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notessapp/Cubits/cubit/notes_cubit_cubit.dart';
import 'package:notessapp/Models/cardmodel.dart';
import 'package:notessapp/views/notescard.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubitCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit, NotesCubitState>(

      builder: (context, state) {
        // ignore: unused_local_variable
        List<CardModel>notes=BlocProvider.of<NotesCubitCubit>(context).notes??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ListView.builder(
              padding: EdgeInsets.zero,
             itemCount: notes.length,
             
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(vertical: 5.0),
                  child: NotesCard(bColor: const Color.fromARGB(58, 158, 73, 73),
                   note:notes[index] ,),
                );
              }),
        );
      },
    );
  }
}
