import 'package:flutter/material.dart';
import 'package:real_estate/constants/constants.dart';
import 'package:real_estate/model/house.dart';

class ChambreDetail extends StatefulWidget {
  
  final House house;
 ChambreDetail(this.house);

  @override
  State<ChambreDetail> createState() => _ChambreDetailState();
}

class _ChambreDetailState extends State<ChambreDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: appPadding, left: appPadding, right: appPadding,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('\$${widget.house.price.toStringAsFixed(3)}',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),),

                    const SizedBox(height: 5,),

                    Text(widget.house.address,
                    //overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      color: black.withOpacity(0.4),
                      fontWeight: FontWeight.w600,
                    ),),
                  ],
                ),
                Text('${widget.house.time} hours ago',
                      overflow: TextOverflow.ellipsis,
                      style: const  TextStyle(
                        fontSize: 16,
                        //color: black.withOpacity(0.4),
                        fontWeight: FontWeight.bold,
                      ),),
              ],
            ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: appPadding, bottom: appPadding),
              child: Text('House informations',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          //color: black.withOpacity(0.4),
                          fontWeight: FontWeight.bold,
                        ),),
            ),
            Container(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(padding: const EdgeInsets.only(left: appPadding, bottom: appPadding),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: black.withOpacity(0.4))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.house.sqFeet.toString(), style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),

                        const SizedBox(height: 10,),

                         const Text('Square foot', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],
                    ),
                  ),),

                   Padding(padding: const EdgeInsets.only(left: appPadding, bottom: appPadding),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: black.withOpacity(0.4))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.house.bedRooms.toString(), style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),

                        const SizedBox(height: 10,),

                         const Text('Bedrooms', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],
                    ),
                  ),),

                   Padding(padding: const EdgeInsets.only(left: appPadding, bottom: appPadding),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: black.withOpacity(0.4))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.house.bathRooms.toString(), style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),

                        const SizedBox(height: 10,),

                         const Text('Bathrooms', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],
                    ),
                  ),),

                   Padding(padding: const EdgeInsets.only(left: appPadding, bottom: appPadding),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: black.withOpacity(0.4))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.house.garages.toString(), style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),

                        const SizedBox(height: 10,),

                         const Text('Garages', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],
                    ),
                  ),)
                ],
              ),
            ),

            Padding(padding: EdgeInsets.only(
              left: appPadding,
               right: appPadding,
               bottom: appPadding*4,),
            child: Text(widget.house.description,
            style: TextStyle(
              color: black.withOpacity(0.4),
              height: 1.5,
            ),),
            )
        
        ],
      ),
    );
  }
}