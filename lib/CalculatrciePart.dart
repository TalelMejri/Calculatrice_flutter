import 'package:flutter/material.dart';
import 'prop_calcul.dart';

class CalcPart extends StatefulWidget {
  const CalcPart({super.key});
  @override
  State<CalcPart> createState() => _CalcPart();
}

class _CalcPart extends State<CalcPart> {

  bool isNotNumber(val){
    if(val=="+" || val=="*" || val=="-" || val=="/" || val=="="){
      return true;
    }
    return false;
  }
  
  final _prop=prop;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemCount: prop.length,
       itemBuilder: (context, index) {
          return Padding(padding: const EdgeInsets.all(10),child:ElevatedButton(onPressed: (){},
            style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: isNotNumber(prop[index])  ? Colors.amber : Colors.black , padding: const EdgeInsets.all(20)),
            child: Text(prop[index],style: const TextStyle(fontSize: 25,color: Colors.white)), 
         )); 
       },);
  }
}