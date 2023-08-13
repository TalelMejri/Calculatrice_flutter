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
        body:SafeArea(
            child: Container(
                child: Column(
                  children: [
                    CircleAvatar(
                        child: const AssetImage('dsds'),
                        backgroundColor: Colors.white,
                    )
                  ],
                ),
            ),
        )
    );
  }
}