import 'package:flutter/material.dart';
import 'package:notessapp/widgets/notesListview.dart';
import 'package:notessapp/widgets/notescard.dart';

import '../widgets/iconsearch.dart';
import 'nodecard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {},
        child:const Icon(Icons.add,color: Color.fromARGB(255, 64, 172, 255),),),
        appBar: AppBar(
          //backgroundColor: Colors.black,
          title: const Text("Notes"),
          actions: const [
            CustomSearchWidget(),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              // SizedBox(height: 20,),
              Expanded(child: NotesListView()),
              // NotesCard(
              //   bColor: const Color(0xffFFCC80),
              // )
              // NodesCard(
              //   bColors: const Color.fromARGB(255, 162, 162, 86),
              //   TextCard: "Flutter Nodes",
              //   sColors: Colors.black,
              // ),
              // //  NodesCard(bColors: const Color.fromARGB(255, 176, 183, 168),TextCard: "Flutter Nodes",sColors: Colors.black,),
              // //  NodesCard(bColors: const Color.fromARGB(255, 0, 221, 255),TextCard: "Flutter Nodes",sColors: Colors.black,),

              // SizedBox(height:10 ,),
              // NotesCard(
              //   bColor: const Color.fromARGB(255, 17, 17, 15),
              // ),
            ],
          ),
        ));
  }
}
