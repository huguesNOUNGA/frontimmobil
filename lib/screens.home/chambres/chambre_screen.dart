import 'package:flutter/material.dart';
import 'package:real_estate/screens.home/chambres/chambre.dart';
import 'package:real_estate/screens.home/chambres/chambre_categories.dart';
import 'package:real_estate/screens.home/screns.home.components/bottom_buttons.dart';
import 'package:real_estate/screens.home/screns.home.components/custom_app_bar.dart';

class ChambreScreen extends StatelessWidget {
  const ChambreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
           const Column(
            children: [
              CustomAppBar(),
              ChambreCategories(),
              Chambre()
          
            ],
          ),
          BottomButtons()
        ],
      ),
    );
  }
}