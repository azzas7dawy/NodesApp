import 'package:flutter/material.dart';

import 'nodecard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black,
        title: Text("Nodes"),
          actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            },
          ),
        ],
        
        ),
    body: SingleChildScrollView(

      child: SizedBox(
        child: Column(
          children: [
            NodesCard(bColors: Colors.yellowAccent,TextCard: "Flutter Nodes",sColors: Colors.black,),
            NodesCard(bColors: const Color.fromARGB(255, 0, 8, 255),TextCard: "Flutter Nodes",sColors: Colors.black,),
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