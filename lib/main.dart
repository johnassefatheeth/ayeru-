import 'package:ayeru2/pages/FaQ.dart';
import 'package:ayeru2/pages/Home.dart';
import 'package:ayeru2/pages/MyCities.dart';
import 'package:ayeru2/pages/MyProfile.dart';
import 'package:ayeru2/pages/Mylocations.dart';
import 'package:ayeru2/pages/Rate.dart';
import 'package:ayeru2/pages/Settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'poppins'),
      home: const HomePage(),
      routes: {
        '/home':(context) => const HomePage(),
        '/mycities':(context) => const MyCitiess(),
        '/myprofile':(context) => const MyProfile(),
        '/mylocation':(context) => const MyLocation(),
        '/rate':(context) => const Rate(),
        '/settings':(context) => const SettingsPages(),
        '/FaQ':(context) => const FaQ()

      },
    );
  }
}

