import 'package:flutter/material.dart';
import 'package:notessapp/widgets/coloritem.dart';

class ColorsListView extends StatelessWidget {
const  ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ColorItem();
        },
      ),
    );
  }
}
