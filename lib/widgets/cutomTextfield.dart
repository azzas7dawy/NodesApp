
import 'package:flutter/material.dart';
import 'package:notessapp/widgets/constants/colors.dart';

class CustomtextFiled extends StatelessWidget {
  const CustomtextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:  16.0),
      child: TextField(
        
        cursorColor:kprimaryColor,
       // const Color.fromARGB(255, 26, 233, 191),
        
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white,),
            borderRadius:BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(),
        hintText: "Title",
        hintStyle: TextStyle(color:kprimaryColor)
          // border: BorderRadius.circular(16),
        // hoverColor: Colors.greenAccent,
        
        ),
      
      ),
    );
  }
}