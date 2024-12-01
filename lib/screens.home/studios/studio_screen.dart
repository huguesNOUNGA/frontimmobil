import 'package:flutter/material.dart';
import 'package:real_estate/screens.home/screns.home.components/bottom_buttons.dart';
import 'package:real_estate/screens.home/screns.home.components/custom_app_bar.dart';
import 'package:real_estate/screens.home/studios/studio.dart';
import 'package:real_estate/screens.home/studios/studio_categories.dart';

class StudioScreen extends StatelessWidget {
  const StudioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
           const Column(
            children: [
              CustomAppBar(),
              StudioCategories(),
              Studio()
          
            ],
          ),
          BottomButtons()
        ],
      ),
    );
  }
}