import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing_new_tools/widgets/app_large_text.dart';
import 'package:testing_new_tools/widgets/app_text.dart';

import '../../widgets/myDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
   // late TabController _tabController;
  Map images = {
    "snorkling.png":"snorkling",



    "hiking.png":"hiking",
    "kayaking.png":"kayaking",

  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3,vsync: this);
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(child: appDrawer(context)),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.circle_rounded,color: Colors.grey,))
          ],

          backgroundColor: Colors.white,

          // title: Text("test"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: appLargeText(text: "Discover", color: Colors.black87),
            ),
            SizedBox(height: 30),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                      labelPadding: EdgeInsets.only(right: 20,left: 20),
                      isScrollable: true,
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: sliderCustome(radius: 6,color: Colors.grey),
                      tabs: [
                        Tab(
                          text:"places",
                        ),
                        Tab(
                          text:"Inspiration",
                        ),
                        Tab(
                          text:"Emotions",
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 300,
                  width: double.maxFinite,// Adjust height as needed
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      ListView.builder(


                        itemBuilder: (BuildContext context, int index) { return

                          Container(
                          margin: EdgeInsets.only(right: 10,top: 10),
                          width: 200,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage("img/mountain.jpeg"),
                                fit: BoxFit.cover
                            ),

                          ),

                        ); },
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                      ),
                      Text("Content for Car Tab"),
                      Text("Content for Car Tab"),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      appLargeText(text: "explore more", size: 22,color: Colors.black87,),
                      appText(text: "See all",color: Colors.grey,)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 90,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 3),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (_, index){
                    return Column(
                      children: [
                        Column(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10,),
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage("img/${images.keys.elementAt(index)}"),
                                        fit: BoxFit.cover
                                    ),

                                  ),

                                ),
                                Container(child: appText(text: images.values.elementAt(index),size:16 - 3 ,))
                              ],
                            )
                          ],
                        )
                      ],
                    );
                  }),
                )
              ],
            ),
          ],
        ),

      ),
    );
  }
}
class sliderCustome extends Decoration {
  final Color color;
  double radius;
  sliderCustome({required this.color,required this.radius});


  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color,radius: radius);
  }
  

}
class _CirclePainter extends BoxPainter{
  final Color color;
  double radius;

  @override
  _CirclePainter({required this.color,required this.radius});
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(configuration.size!.width /2 - radius / 2, configuration.size!.height - radius);

    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }
  
}