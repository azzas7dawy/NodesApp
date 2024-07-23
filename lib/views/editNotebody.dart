import 'package:flutter/material.dart';

import '../widgets/cutomTextfield.dart';


class EditNoteBodyView extends StatelessWidget {
  const EditNoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
             SizedBox(height: 40,),
          CustomtextFiled(hint: 'Title',),
          SizedBox(height: 16),
          CustomtextFiled( hint: ' Content',maxLines: 8,),
        //  NotesModelSheet(),
        ],
      ),
    );
  }
}