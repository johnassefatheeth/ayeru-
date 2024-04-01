import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text(
          'MyProfile'
        ),
        leading: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context,'/home');
          },
          child: Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.all(10) ,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color:Colors.white ,
            borderRadius: BorderRadius.circular(10)
          ), 
          child:const Icon(Icons.home)
        )
        ),
      ),
    );
  }
}