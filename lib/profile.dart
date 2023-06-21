import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  var nameFromHome;
  ProfileScreen(this.nameFromHome);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Welcome to My Profile')),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Column(
            children: [
              Text(
                'Welcome $nameFromHome',style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Back'))
            ],
          ),
        ),
        
      ),
    );
  }
}