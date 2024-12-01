import 'package:flutter/material.dart';
import 'package:real_estate/model/house.dart';
import 'package:real_estate/screens.home/appartements/appart_detail.dart';
import 'package:real_estate/screens.home/appartements/swiper_images.dart';
import 'package:real_estate/screens.home/screns.home.components/buttom_buttons.dart';
import 'package:real_estate/screens.home/screns.home.components/custom_ap_bar.dart';

class DetailScreenAppart extends StatefulWidget {
  
  final House house;
   const DetailScreenAppart({required this.house}) ;
  

  @override
  State<DetailScreenAppart> createState() => _DetailScreenAppartState();
}

class _DetailScreenAppartState extends State<DetailScreenAppart> {
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
                  SwiperImages(widget.house.moreTmageUrl),
                  CustomApBar(),
                ],
              ),
          
              AppartDetail(widget.house)
            ],
          ),
          ButtomButtons(),
        ],
      ),
    );
  }
}