import 'package:flutter/material.dart';

class MyCitiess extends StatefulWidget {
  const MyCitiess({super.key});

  @override
  State<MyCitiess> createState() => _MyCitiessState();
}

class _MyCitiessState extends State<MyCitiess> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text(
          'MyCities'
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