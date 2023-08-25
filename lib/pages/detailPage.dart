import 'package:flutter/material.dart';
import 'package:testing_new_tools/widgets/app_text.dart';
import 'package:testing_new_tools/widgets/responsiveButton.dart';

import '../widgets/appButtons.dart';
import '../widgets/app_large_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int howMuchStars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/mountain.jpeg"),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                  ],
                )),
            Positioned(
                top: 270,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 520,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          appLargeText(
                              text: "Yosmite",
                              size: 22,
                              color: Colors.black.withOpacity(0.8)),
                          appLargeText(
                              text: "\$ 250",
                              size: 22,
                              color: Colors.black.withOpacity(0.8)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.blueAccent,
                          ),
                          appText(
                            text: "USA, California",
                            color: Colors.black38,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: howMuchStars <= index
                                    ? Colors.blueGrey
                                    : Colors.yellow,
                              );
                            }),
                          ),
                          appText(text: "(5.0)")
                        ],
                      ),
                      appLargeText(
                          text: "people",
                          size: 22,
                          color: Colors.black.withOpacity(0.8)),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: myAppButton(
                                textColor: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black87,
                                borderColor: Colors.grey,
                                size: 50,
                                backGroundColor: selectedIndex == index
                                    ? Colors.black87
                                    : Colors.white,
                                isIcon: false,
                                text: (index + 1).toString(),
                              ));
                        }),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      appLargeText(
                          text: "Description",
                          size: 22,
                          color: Colors.black.withOpacity(0.8)),
                      SizedBox(
                        height: 10,
                      ),
                      appText(
                          text:
                              """appLargeText(text: "Description",size: 22,color: Colors.black.withOpacity(0.8))""",
                          size: 16,
                          color: Colors.black.withOpacity(0.3)),
                    ],
                  ),
                )),
            Positioned(
                bottom: 10,
                left: 10,
                right: 20,
                child: Row(
                  children: [
                    myAppButton(
                      icon: Icons.favorite_border_outlined,
                      circulerDegree: 8,
                      textColor: Colors.black87,
                      borderColor: Colors.black54,
                      size: 50,
                      backGroundColor: Colors.white,
                      isIcon: true,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ResponsiveButton(
                      width: 100,
                      isResponsive: true,
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
