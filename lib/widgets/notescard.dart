import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesCard extends StatelessWidget {
  NotesCard({
    super.key,
    required this.bColor,
  });
  final Color bColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.amber,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title:const Text(
              "Flutter Tips",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              "Bluid your business with azza sadawy",
              style: TextStyle(
                 fontSize: 20,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon:const Icon(
                  FontAwesomeIcons.trash,
                  // Icons.delete,
                  color: Colors.black,
                  size: 26,
                )),
          ),
          Text(
            'May22 ,2022',
            style: TextStyle(
              //fontSize: 15,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
