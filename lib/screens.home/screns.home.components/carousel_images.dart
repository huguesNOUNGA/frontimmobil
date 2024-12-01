import 'package:card_swiper/card_swiper.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/constants/constants.dart';
//import 'package:carousel_slider/carousel_slider.dart';
class CarouselImages extends StatefulWidget {

   final List<String> imagesListurl;
  CarouselImages(this.imagesListurl);
  //const CarouselImages({super.key});

  @override
  State<CarouselImages> createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.35,
      //padding: const EdgeInsets.only(left: appPadding, right: appPadding,top: appPadding*2),
      child: Swiper(
        itemCount: widget.imagesListurl.length,
        autoplay: true, // Désactive l'autoplay
        pagination: const SwiperPagination(
          builder: DotSwiperPaginationBuilder(
            size: 5.0,
            activeSize: 9.0,
            color: Colors.white,
            activeColor: Colors.blue, // Couleur des points actifs
          ),
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            widget.imagesListurl[index],
            fit: BoxFit.cover, // Ajuste l'image pour couvrir le conteneur
          );
        },
      
      ),
      
    );
        
      
    
}


}