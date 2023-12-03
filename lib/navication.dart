import 'package:flutter/material.dart';
import '../screens/about.dart';
import '../screens/prodect.dart';

class Mywidget extends StatelessWidget {
  const Mywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
      appBar: AppBar(
        title: const Text("navigate "),
        centerTitle: true,
        //bg colour
        backgroundColor: Color.fromARGB(255, 209, 108, 185),

        //leading
        leading: Icon(Icons.home),

        //actions
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        //shape
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),

        //Elevetion
        elevation: 20.4,
      ),

      body:
       Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => prodect()));
                },
                child: Text(
                  "prodect page",
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => about()));
                },
                child: Text(
                  "About page",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
