// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notessapp/Cubits/cubit/notes_cubit_cubit.dart';
import 'package:notessapp/widgets/constants/colors.dart';
import 'package:notessapp/views/notesListview.dart';
import 'package:notessapp/widgets/modelButtonNotes.dart';

import 'package:notessapp/widgets/notescard.dart';

import '../widgets/iconsearch.dart';

import 'nodecard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  // ignore: override_on_non_overriding_member

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          backgroundColor:kprimaryColor,
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const NotesModelSheet();
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
            CustomSearchWidget(
              icon: Icons.search,
            ),
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
