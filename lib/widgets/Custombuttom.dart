import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:notessapp/widgets/constants/colors.dart';

// ignore: must_be_immutable
class CustomTextButton extends StatelessWidget {
   CustomTextButton({
    super.key,
    this.onTap,
    required this.isLoading
  });
  final void Function()? onTap;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 40,
            width: double.infinity,
            color: kprimaryColor,
            child:  Center(
              child:isLoading ?
            const  SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  color: Colors.black,
                  
                ),
              )
              : const Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        
      ),
    );
  }
}
