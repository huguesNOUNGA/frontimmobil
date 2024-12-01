import 'package:flutter/material.dart';
import 'package:real_estate/data/data.dart';
import 'package:real_estate/model/house.dart';
import 'package:real_estate/screens.home/home_screen.dart';

class Locations extends StatelessWidget {
  List<String> PropertyType = ["Home", "Studio", "Appartment", "ModernBedroom"];
  List<Icon> PropertyIcons = [
    Icon(
      Icons.house_rounded,
      size: 40,
      color: Colors.lightBlue.shade400,
    ),
    Icon(
      Icons.business_outlined,
      size: 40,
      color: Colors.blue.shade900,
    ),
    const Icon(
      Icons.apartment,
      size: 40,
      color: Colors.green,
    ),
    const Icon(
      Icons.home_work_outlined,
      size: 30,
      color: Colors.teal,
    )
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  //House house = houseList[index];

    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFF7F6FB),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.lightBlueAccent,
                        ),
                        Text(
                          "Douala,",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Cameroun",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black54,
                            //fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Icon(
                      Icons.notifications_active,
                      color: Colors.black54,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(5)),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    border: InputBorder.none,
                    label: const Text("Search"),
                    suffixIcon: Container(
                      margin: const EdgeInsets.all(7),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.indigo),
                      child: const Center(
                        child: Icon(
                          Icons.filter_list_sharp,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Find Properties",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.9,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(7),
                    height: 30,
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        (PropertyIcons[index]),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              PropertyType[index],
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "123 items",
                              style: TextStyle(
                                color: Colors.black54,
                                //fontSize: 16,
                                //fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nearby to you",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("See all"),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
     
      ),
    );
  }
}
