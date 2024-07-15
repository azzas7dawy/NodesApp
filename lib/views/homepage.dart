import 'package:flutter/material.dart';

import '../widgets/iconsearch.dart';
import 'nodecard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        title: Text("Notes"),
          actions: [
            
 CustomSearchWidget(),
        ],
        
        ),
    body: SingleChildScrollView(

      child: SizedBox(
        child: Column(
          children: [
            NodesCard(bColors: const Color.fromARGB(255, 162, 162, 86),TextCard: "Flutter Nodes",sColors: Colors.black,),
            NodesCard(bColors: const Color.fromARGB(255, 176, 183, 168),TextCard: "Flutter Nodes",sColors: Colors.black,),
           NodesCard(bColors: const Color.fromARGB(255, 0, 221, 255),TextCard: "Flutter Nodes",sColors: Colors.black,),
           NodesCard(bColors: const Color.fromARGB(255, 174, 98, 131),TextCard: "Flutter Nodes",sColors: Colors.black,),
            NodesCard(bColors: const Color.fromARGB(255, 0, 255, 55),TextCard: "Flutter Nodes",sColors: Colors.black,),
          ],
        ),
      ),
    )

    );
  }
}
