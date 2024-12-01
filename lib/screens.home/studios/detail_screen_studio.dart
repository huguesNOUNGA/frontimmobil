import 'package:flutter/material.dart';
import 'package:real_estate/model/house.dart';
import 'package:real_estate/screens.home/screns.home.components/buttom_buttons.dart';
import 'package:real_estate/screens.home/screns.home.components/custom_ap_bar.dart';
import 'package:real_estate/screens.home/studios/studio_detail.dart';
import 'package:real_estate/screens.home/studios/swiper_images_studio.dart';

class DetailScreenStudio extends StatefulWidget {
  
  final House house;
   const DetailScreenStudio({required this.house}) ;

  @override
  State<DetailScreenStudio> createState() => _DetailScreenStudioState();
}

class _DetailScreenStudioState extends State<DetailScreenStudio> {
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
                  SwiperImagesStudio(widget.house.moreTmageUrl),
                  CustomApBar(),
                ],
              ),
          
              StudioDetail(widget.house)
            ],
          ),
          ButtomButtons(),
        ],
      ),
    );;
  }
}