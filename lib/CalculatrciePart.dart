import 'package:flutter/material.dart';


class CalcPart extends StatefulWidget {
  const CalcPart({super.key});
  @override
  State<CalcPart> createState() => _CalcPart();
}

class _CalcPart extends State<CalcPart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
              child:
               Container(alignment: Alignment.bottomRight,
                         child: Column(
                          children: [
                            Text("data")
                          ],
                         )
                )
            ); 
  }
}