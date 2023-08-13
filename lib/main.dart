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

  Future<void> navigation()async{
        String ? result=await Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>const MyWidget()));
       if(result!=null){
             showDialog(context: context, builder: (BuildContext context){
              return AlertDialog(
                  title: Text("Warning"),
                  content:Text("${result} Don't Work"),
                  actions: [
                    IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.cancel))
                  ],
              );
            });
       }
  }

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
           IconButton(onPressed: 
             navigation
           , icon: const Icon(Icons.info))
         ],
         ),
    );
  }
}