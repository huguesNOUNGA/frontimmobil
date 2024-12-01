import 'package:flutter/material.dart';
import 'package:real_estate/screens.home/location.dart';
import 'package:real_estate/screens.home/screns.home.components/bottom_buttons.dart';
import 'package:real_estate/screens.home/screns.home.components/categories.dart';
import 'package:real_estate/screens.home/screns.home.components/custom_app_bar.dart';
import 'package:real_estate/screens.home/screns.home.components/houses.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
           const Column(
            children: [
              CustomAppBar(),
              Categories(),
              Houses(),
          
            ],
          ),
          BottomButtons()
        ],
      ),
    );
  }
}