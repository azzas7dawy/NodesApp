import 'package:flutter/material.dart';

import 'package:notessapp/Models/cardmodel.dart';

import 'package:notessapp/views/edit_note_color_list_view.dart';


import '../widgets/cutomTextfield.dart';

// ignore: must_be_immutable
class EditNoteBodyView extends StatelessWidget {
  EditNoteBodyView({super.key, required this.note, this.title, this.content});
  final CardModel note;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomtextFiled(
            hint: note.title,
            onChange: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomtextFiled(
            hint: note.content,
            onChange: (value) {
              content = value;
            },
            maxLines: 8,
          ),
          const SizedBox(height: 16),
           EditNoteColorList(note:note,
          ),
          //  NotesModelSheet(),
        ],
      ),
    );
  }
}
