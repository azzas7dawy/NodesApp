import 'package:flutter/material.dart';

class NodesCard extends StatelessWidget {
  const NodesCard({
    super.key,
    required this.bColors,
    required this.textCard,
  required this.sColors,
  });
  final Color bColors;
  final Color sColors;
  final String textCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 6),
      padding:const EdgeInsets.all( 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bColors,
        ),
        height: 150,
        width: double.infinity,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // ignore: unnecessary_string_interpolations
              '$textCard',
              style:const TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
            ),
            Text(
              '$context',
              style: TextStyle(
                color: sColors,
                fontSize: 17,
              ),
            ),
          ],
        ));
  }
}
