import 'package:flutter/material.dart';
import 'package:notessapp/widgets/constants/colors.dart';
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
       CustomtextFiled(hint: "Title",),
       SizedBox(height: 13,),
       CustomtextFiled( hint: "SubTitle",maxLines: 5,),
        SizedBox(height: 50,),
       CustomTextButton()
        ],
        
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton( onPressed: () {  },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
       height: 40,
       width:double.infinity,
       color: kprimaryColor,
       child:const Center(
         child: Text("Add",
                  style:TextStyle(
         color: Colors.black,
         fontSize: 20,
         ), ),
       ),
      
          
      
      ),
    ),
     
      );
  }
}
