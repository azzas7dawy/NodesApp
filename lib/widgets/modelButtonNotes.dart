import 'package:flutter/material.dart';
import 'package:notessapp/widgets/cutomTextfield.dart';

class NotesModelSheet extends StatelessWidget {
  const NotesModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      child:const Column(
        children: [
          SizedBox(height: 40,),
       CustomtextFiled()
        ],
        
      ),
    );
  }
}
