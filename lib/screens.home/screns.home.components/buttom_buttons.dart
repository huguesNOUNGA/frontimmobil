import 'package:flutter/material.dart';
import 'package:real_estate/constants/constants.dart';

class ButtomButtons extends StatelessWidget {
  const ButtomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: appPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
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
                Icon((Icons.mail_rounded), color: white,),
                Text('Message', style:  TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),)
              ],
            ),
          ),
          Container(
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
                Icon((Icons.call_rounded), color: white,),
                Text('Call', style:  TextStyle(
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}