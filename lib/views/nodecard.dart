import 'package:flutter/material.dart';

class NodesCard extends StatelessWidget {
  NodesCard({
    super.key,
    required this.bColors,
    required this.TextCard,
  required this.sColors,
  });
  final Color bColors;
  final Color sColors;
  final String TextCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 6),
      padding: EdgeInsets.all( 10),
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
              '$TextCard',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
            ),
            Text(
              'data',
              style: TextStyle(
                color: sColors,
                fontSize: 17,
              ),
            ),
          ],
        ));
  }
}
