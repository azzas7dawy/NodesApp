import 'package:flutter/material.dart';

import '../widgets/cutomTextfield.dart';
import '../widgets/modelButtonNotes.dart';

class EditNoteBodyView extends StatelessWidget {
  const EditNoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
             SizedBox(height: 50,),
          CustomtextFiled(hint: 'Title',),
          SizedBox(height: 20,),
          CustomtextFiled( hint: ' Content',maxLines: 10,),
        //  NotesModelSheet(),
        ],
      ),
    );
  }
}