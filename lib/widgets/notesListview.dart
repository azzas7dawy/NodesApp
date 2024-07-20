import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notessapp/widgets/notescard.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder : (context, index){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: NotesCard(bColor: Colors.white24),
      );
    });
  }
}