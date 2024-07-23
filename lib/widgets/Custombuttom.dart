import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notessapp/widgets/constants/colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key, this.onTap,
  });
  final void Function()? onTap;
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
            child: const Center(
              child: Text(
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
