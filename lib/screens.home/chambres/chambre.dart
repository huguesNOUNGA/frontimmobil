import 'package:flutter/material.dart';
import 'package:real_estate/constants/constants.dart';
import 'package:real_estate/data/chambres.dart';
import 'package:real_estate/model/house.dart';
import 'package:real_estate/screens.home/chambres/detail_screen_chambre.dart';

class Chambre extends StatefulWidget {
  const Chambre({super.key});

  @override
  State<Chambre> createState() => _ChambreState();
}

class _ChambreState extends State<Chambre> {
 
_buildHouse(BuildContext context, int index){
  Size size = MediaQuery.of(context).size;
  House house = houseListChambre[index];

  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreenChambre(house: house)));
    },
    child: Padding(padding: EdgeInsets.symmetric(horizontal: appPadding, vertical: appPadding/2),
    child: Container(
      height: size.height*0.27,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  height: size.height*0.19,
                  width: size.width,
                  fit: BoxFit.cover,
                  image: AssetImage(house.imageUrl)),
              ),
              Positioned(
                right: appPadding/2,
                top: appPadding/2,
                child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: IconButton(
                    onPressed: (){
                      setState(() {
                        house.isFav =! house.isFav;
                      });
                    }, 
                    icon: house.isFav? 
                    Icon(Icons.favorite_rounded, color: red,):
                    Icon(Icons.favorite_border_rounded, color: black,),
                    ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(
                '\$${house.price.toStringAsFixed(3)}', style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Text(
                  house.address ,
                  overflow: TextOverflow.ellipsis,
                   style: TextStyle(
                    fontSize: 15,
                    color: black.withOpacity(0.4),
                    
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '${house.bedRooms} bedrooms/', style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                ),
              ),
              Text(
                '${house.bathRooms} bathRooms/', style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                ),
              ),
              Text(
                '${house.sqFeet} sqft/', style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                ),
              ),
            ],
          )
        ],
      ),
    ),),
  );
  
}
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: houseListChambre.length,
        itemBuilder: (context, index){
          return _buildHouse(context, index);

        }));
  }
}