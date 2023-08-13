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

  String res="";
  String opp="";
  int numb1=0;
  int numb2=0;
  String txt="";

  void initAll(){
     res="0";
     opp="";
     numb1=0;
     numb2=0;
     txt=res;
  }

  void CalculRes(String val){
    if(val=="C"){
      initAll();
    }else if(val=="+" || val=="-" || val=="*" || val=="/"){
      numb1=int.parse(txt);
      opp=val;
      res=((numb1).toString()+opp);
    }else if(val=="="){
      numb2 = int.parse(txt.substring(txt.lastIndexOf(opp) + 1));
      if(opp=="+"){
        res=(numb1+numb2).toString();
      }else if(opp=="*"){
        res=(numb1*numb2).toString();
      }else if(opp=="-"){
        res=(numb1-numb2).toString();
      }else if(opp=="/"){
        res=(numb1/numb2).toString();
      }
    }else{
      res=res+val;
    }
    setState(() {
      txt=res;
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
          margin: const EdgeInsets.only(top: 230),
          child:   Column(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Padding(padding: EdgeInsets.all(15),
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:<Widget> [ Text(txt,style:const TextStyle(fontSize: 30),),],
                ),
                 ),
                Expanded(child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                    itemCount: prop.length,
                     itemBuilder: (context, index) {
                        return Padding(padding: const EdgeInsets.all(10),child:ElevatedButton(onPressed: (){CalculRes(prop[index]);},
                                style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: isNotNumber(prop[index])  ? Colors.amber : Colors.black , padding: const EdgeInsets.all(20)),
                                child: Text(prop[index],style: const TextStyle(fontSize: 25,color: Colors.white)), 
                                
                            ),
                            ); 
                        },),
                        )
               ],
            ),
         ); ;
  }
}

