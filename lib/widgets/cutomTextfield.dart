import 'package:flutter/material.dart';
import 'package:notessapp/widgets/constants/colors.dart';

class CustomtextFiled extends StatelessWidget {
  const CustomtextFiled(
      {super.key, required this.hint, this.maxLines = 1, this.onSeved, this.onChange});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSeved;
  final void Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        onChanged:onChange ,
        onSaved: onSeved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field is required';
          } else {
            return null;
          }
        },
        cursorColor: kprimaryColor,
        maxLines: maxLines,
        // const Color.fromARGB(255, 26, 233, 191),

        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:const BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: const OutlineInputBorder(),
            hintText: hint,
            hintStyle: TextStyle(color: kprimaryColor)
            // border: BorderRadius.circular(16),
            // hoverColor: Colors.greenAccent,

            ),
      ),
    );
  }
}
