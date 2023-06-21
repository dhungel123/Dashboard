
import 'package:flutter/material.dart';

class UjwolBtn extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final TextStyle? textStyle;
  final VoidCallback? callBack;


  UjwolBtn({required this.btnName, this.icon, this.textStyle, this.callBack});

  @override
  Widget build(BuildContext context){
     return ElevatedButton(onPressed: (){
       callBack!();

   }, child:icon!=null?Row(children: [
     icon!,
       SizedBox(
         width: 20,
       ),
       Text(btnName,style: textStyle,)]):
     Text(btnName,style: textStyle,),style: ElevatedButton.styleFrom(
       backgroundColor: Colors.blueGrey,

     ),
     );

  }
}