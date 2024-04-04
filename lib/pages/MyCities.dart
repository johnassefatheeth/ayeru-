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
        iconTheme:const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: Colors.blue,
        title:const Text(
          'MyCities',
          style: TextStyle(
            color: Colors.white
          ),
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
            color:const Color.fromARGB(0, 0, 0, 0) ,
            borderRadius: BorderRadius.circular(10)
          ), 
          child:const Icon(Icons.home,
          color: Colors.white,)
        )
        ),
      ),
    );
  }
}