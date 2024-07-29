import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notessapp/Cubits/cubit/notes_cubit_cubit.dart';
import 'package:notessapp/Models/cardmodel.dart';

import '../views/editView.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({
    super.key,
    required this.bColor,
    required this.note,
  });
  final CardModel note;

  final Color bColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditCardView(),
            ));
      },
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                note.content,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubitCubit>(context).fetchNotes();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    // Icons.delete,
                    color: Colors.black,
                    size: 26,
                  )),
            ),
            Text(
              note.date,
              style: const TextStyle(
                //fontSize: 15,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
