import 'package:flutter/material.dart';
import 'package:notessapp/widgets/coloritem.dart';

// ignore: must_be_immutable
class ColorsListView extends StatefulWidget {
  ColorsListView({
    super.key,
  });
  
  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors =const [
    Color(0xff6e44ff),
    Color(0xffb892ff),
    Color(0xffffc2e2),
    Color(0xffff90b3),
    Color(0xffef7a85),
    Color(0xff6e44ff),
    Color(0xffb892ff),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
