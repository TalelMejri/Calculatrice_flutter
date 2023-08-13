import 'package:flutter/material.dart';
import 'InfoPersonel.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CalculScreen(),
      theme: ThemeData(primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder>{
        "Info":(BuildContext context)=>const MyWidget(),
      },
    );
  }
}

class CalculScreen extends StatefulWidget {
  const CalculScreen({super.key});

  @override
  State<CalculScreen> createState() => _CalculScreen();
}

class _CalculScreen extends State<CalculScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: 
         const Center(
            child: Text("Calculatrice",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),),
         ),
         actions: <Widget>[
           IconButton(onPressed: (){
            Navigator.pushNamed(context,"Info");
           }, icon: const Icon(Icons.info))
         ],
         ),
    );
  }
}