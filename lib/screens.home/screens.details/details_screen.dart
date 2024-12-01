import 'package:flutter/material.dart';
import 'package:real_estate/model/house.dart';
import 'package:real_estate/screens.home/screns.home.components/buttom_buttons.dart';
import 'package:real_estate/screens.home/screns.home.components/carousel_images.dart';
import 'package:real_estate/screens.home/screns.home.components/custom_ap_bar.dart';
import 'package:real_estate/screens.home/screns.home.components/house_details.dart';

class DetailsScreen extends StatefulWidget {

  final House house;
  const DetailsScreen({required this.house}) ;
  

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Stack(
                //alignment: Alignment.topCenter,
                children: [
                  CarouselImages(widget.house.moreTmageUrl),
                  CustomApBar(),
                ],
              ),
          
              HouseDetails(widget.house)
            ],
          ),
          ButtomButtons(),
        ],
      ),
    );
  }
}