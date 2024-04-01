import 'package:flutter/material.dart';

class Rate extends StatefulWidget {
  const Rate({super.key});

  @override
  State<Rate> createState() => _RateState();
}

class _RateState extends State<Rate> {
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