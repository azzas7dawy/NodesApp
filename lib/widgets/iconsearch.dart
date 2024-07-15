import 'package:flutter/material.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(8),
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 51, 45, 45),
        
       borderRadius: BorderRadius.circular(12) ,
       
       
      ),
      child: Center(child: IconButton(icon:Icon(Icons.search,size: 28,),onPressed: (){},)),
    );
  }
}