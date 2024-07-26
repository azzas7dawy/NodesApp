// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:notessapp/widgets/notesListview.dart';

import 'package:notessapp/widgets/notescard.dart';

import '../widgets/iconsearch.dart';
import '../widgets/modelButtonNotes.dart';
import 'nodecard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(16) ,
              ),
                context: context,
                builder: (context) {
                  return  NotesModelSheet();
                });
          },
          child: const Icon(
            Icons.add,
            color: Color.fromARGB(255, 64, 172, 255),
          ),
        ),
        appBar: AppBar(
          //backgroundColor: Colors.black,
          title: const Text("Notes"),
          actions: const [
            CustomSearchWidget(icon: Icons.search,),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
            
              Expanded(child: NotesListView()),
            
            ],
          ),
        ));
  }
}
