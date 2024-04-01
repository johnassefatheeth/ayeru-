import 'package:ayeru2/components/DrawerHeader.dart';
import 'package:ayeru2/components/DrawerList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

String dropdownValue = 'Breakfast';

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        title: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_drop_down),
          iconSize: 24,
          elevation: 16,
          style: const TextStyle(color: Colors.white, fontSize: 18),
          underline: Container(
            height: 2,
            color: Colors.white,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['Breakfast', 'Lunch', 'Dinner', 'Snacks']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value
              , style:const TextStyle(
                backgroundColor: Color.fromARGB(255, 28, 106, 179)
              ),),
            );
          }).toList(),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          GestureDetector(
              onTap: () {},
              child: Container(
                  margin:const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: 37,
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  child:const Icon(
                    Icons.more_vert,
                    color: Colors.blue,
                  ))),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child:Container(
            child: const Column(
              children: [
                DrawerHeaderpart(),
                 DrawerList(),
                 
                
              ],
            ),
          ) ,),
        
      ),
    );
  }
}