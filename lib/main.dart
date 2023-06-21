import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/IntroPage.dart';
import 'package:untitled2/profile.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
     return MaterialApp(
       home: IntroPage(),
     );
  }
}
class HomePage extends StatelessWidget{
  var nameController=TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Welcome to HomePage')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 200,
              height: 70,
              child: TextField(
                controller:nameController ,
              ),
            )
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=>ProfileScreen(nameController.text.toString())));

          }, child: Text('profile'))
        ],
      ),
    );
  }
}