import 'package:application/presentation/doctor_app.dart';
import 'package:application/size_confige.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Doctor App',
      theme: ThemeData(
        fontFamily: "Baloo",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Builder(
        builder: (context) {
          SizeConfig.initSize(context);
          return DoctorScreen();
        },
      ),
    );
  }
}
