import 'package:application/constants.dart';
import 'package:application/presentation/appbar.dart';
import 'package:application/presentation/banner.dart';
import 'package:application/presentation/bottom_navigation_bar.dart';
import 'package:application/presentation/categories_list.dart';
import 'package:application/presentation/doctors_list.dart';
import 'package:application/presentation/search_field.dart';
import 'package:application/size_confige.dart';
import 'package:flutter/material.dart';

class DoctorScreen extends StatefulWidget {
  @override
  DoctorScreenState createState() => DoctorScreenState();
}

class DoctorScreenState extends State<DoctorScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getRelativeHeight(0.025)),
              DoctorAppBar(key: ObjectKey(_selectedIndex)),
              SizedBox(height: getRelativeHeight(0.015)),
              DoctorBanner(key: UniqueKey()),
              SizedBox(height: getRelativeHeight(0.005)),
              SearchField(key: UniqueKey()),
              SizedBox(height: getRelativeHeight(0.025)),
              CategoriesList(key: UniqueKey()),
              SizedBox(height: getRelativeHeight(0.01)),
              DoctorsList(key: UniqueKey()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: _selectedIndex,
        onItemPressed: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        centerIcon: Icons.place,
        itemIcons: [
          Icons.home,
          Icons.notifications,
          Icons.message,
          Icons.account_box,
        ],
        key: UniqueKey(),
      ),
    );
    return scaffold;
  }
}
