import 'package:flutter/material.dart';
import 'package:real_estate/model/house.dart';
import 'package:real_estate/screens.home/chambres/chambre_detail.dart';
import 'package:real_estate/screens.home/chambres/swiper_image_chambre.dart';
import 'package:real_estate/screens.home/screns.home.components/buttom_buttons.dart';
import 'package:real_estate/screens.home/screns.home.components/custom_ap_bar.dart';

class DetailScreenChambre extends StatefulWidget {
  
   final House house;
   const DetailScreenChambre({required this.house}) ;

  @override
  State<DetailScreenChambre> createState() => _DetailScreenChambreState();
}

class _DetailScreenChambreState extends State<DetailScreenChambre> {
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
                  SwiperImageChambre(widget.house.moreTmageUrl),
                  CustomApBar(),
                ],
              ),
          
              ChambreDetail(widget.house)
            ],
          ),
          ButtomButtons(),
        ],
      ),
    );
  }
}