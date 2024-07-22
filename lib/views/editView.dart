import 'package:flutter/material.dart';
import 'package:notessapp/views/editNotebody.dart';
import 'package:notessapp/widgets/iconsearch.dart';

class EditCardView extends StatelessWidget {
  const EditCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.black,
          title: const Text("Edit Note"),
          actions: const [
            CustomSearchWidget( icon:Icons.check,),
          ],
        ),
     // backgroundColor: Colors.white30,
      body: EditNoteBodyView(),
    );
  }
}
