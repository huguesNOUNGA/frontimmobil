import 'package:flutter/material.dart';
import 'package:real_estate/screens.home/appartements/appart.dart';
import 'package:real_estate/screens.home/appartements/appart_categories.dart';
import 'package:real_estate/screens.home/screns.home.components/bottom_buttons.dart';
import 'package:real_estate/screens.home/screns.home.components/custom_app_bar.dart';

class AppartementScreen extends StatelessWidget {
  const AppartementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
           const Column(
            children: [
              CustomAppBar(),
              AppartCategories(),
              Appart()
          
            ],
          ),
          BottomButtons()
        ],
      ),
    );
  }
}