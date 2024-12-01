import 'package:flutter/material.dart';
import 'package:real_estate/constants/constants.dart';
import 'package:real_estate/data/appartement.dart';

class AppartCategories extends StatefulWidget {
  const AppartCategories({super.key});

  @override
  State<AppartCategories> createState() => _AppartCategoriesState();
}

class _AppartCategoriesState extends State<AppartCategories> {
  int selectedCategoryIndex = 0;
  Widget _buildcategory(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
          
        });
      },
      child: Padding(
        padding: EdgeInsets.only(right: appPadding/3),
        child: Container(
          //padding: EdgeInsets.symmetric(horizontal: appPadding /2),
          width: size.width*0.32,
          decoration: BoxDecoration(
            color:  selectedCategoryIndex == index? darkblue : black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              categoryListAppart[index],style: TextStyle(
                fontWeight:  FontWeight.bold,
                color:  selectedCategoryIndex == index? white : black
              ),
            ),
          ),
        ),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: appPadding, top: appPadding/2, bottom: appPadding),
      child: Container(
        height: size.height*0.05,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryListAppart.length,

          itemBuilder: (context, index){
            return _buildcategory(context, index);
          },
        ),
      ),
    );
  }
}