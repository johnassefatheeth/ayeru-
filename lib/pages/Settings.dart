import 'package:flutter/material.dart';

class SettingsPages extends StatefulWidget {
  const SettingsPages({super.key});

  @override
  State<SettingsPages> createState() => _SettingsPagesState();
}

class _SettingsPagesState extends State<SettingsPages> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text(
          'setting'
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