import 'package:flutter/material.dart';
import 'package:real_estate/constants/constants.dart';

class BottomButtons extends StatelessWidget {
  //const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: appPadding),
      child: Container(
        width: size.width*0.30,
        height: size.height*0.05,
        decoration: BoxDecoration(
          color: darkblue,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [BoxShadow(
            color: darkblue.withOpacity(0.6),
            offset: Offset(0, 10),
            blurRadius: 10
          )]
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon((Icons.map_outlined), color: white,),
            Text('Map view', style:  TextStyle(
              color: white,
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),)
          ],
        ),
      ),
    );
  }
}