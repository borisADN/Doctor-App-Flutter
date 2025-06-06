import 'package:application/model/category.dart';
import 'package:application/model/doctor.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Data {
  static final categoriesList = [
    Category(title: "Cardiologie", doctorsNumber: 15, icon: Icons.favorite),
    Category(title: "Pédiatrie", doctorsNumber: 8, icon: LineIcons.child),
    Category(title: "Dermatologie", doctorsNumber: 7, icon: Icons.line_style),
    Category(title: "Ophtalmologie", doctorsNumber: 10, icon: LineIcons.eye),
  ];

  static final doctorsList = [
    Doctor(
      name: "Dr.Hegazy Ali",
      speciality: "Cardiologie",
      image: "assets/images/doctor_1.png",
      reviews: 80,
      reviewScore: 4,
    ),
    Doctor(
      name: "Dr.Dani",
      speciality: "Dermatologie",
      image: "assets/images/doctor_2.png",
      reviews: 67,
      reviewScore: 5,
    ),
    Doctor(
      name: "Dr George",
      speciality: "Ophtalmologie",
      image: "assets/images/doctor_3.png",
      reviews: 19,
      reviewScore: 3,
    ),
  ];
}
