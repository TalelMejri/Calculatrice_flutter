import 'package:calculatrice/main.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  actions: [ 
                      IconButton(onPressed: (){
                             Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>const MyApp()));
                            },icon:const Icon(Icons.close,color: Colors.black)
                       )
                  ]
                 ),
        body:  Container(
               margin: const EdgeInsets.only(top: 80),
                child:   Center(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        maxRadius: 100,
                        backgroundImage: AssetImage("images/profil.jpg"),
                       ),
                       const SizedBox(height: 25),
                       const Text("Talel Mejri",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
                       const SizedBox(height: 25),
                       Card(
                           margin: const EdgeInsets.all(20),
                            child: Padding(padding: const EdgeInsets.all(20),
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                  IconButton(onPressed: (){Navigator.pop(context);}, icon: Image.asset("images/github.png")),
                                  IconButton(onPressed: (){Navigator.pop(context);}, icon:Image.asset("images/youtube.png")),
                                  IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.facebook))
                               ],
                             ),
                            )
                       )
                    ],
                  ),
                ),
               )
    );
  }
}