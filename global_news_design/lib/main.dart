import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "demo",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  var myController = PageController(
    initialPage: 0,
    keepPage: true,
    viewportFraction: 1,
  );
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Material(
          color: Colors.black.withOpacity(0.7),
          child: TabBar(
              indicatorColor: Colors.grey,
              controller: tabController,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.moped_outlined,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.play_arrow, color: Colors.white, size: 28),
                ),
                Tab(
                  icon: Icon(Icons.supervised_user_circle,
                      color: Colors.white, size: 22),
                ),
                Tab(
                  icon: Icon(Icons.maps_home_work_outlined,
                      color: Colors.white, size: 22),
                ),
              ]),
        ),
        backgroundColor: Colors.grey.withOpacity(0.1),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            height: 750,
            child: Column(children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child:
                        InkWell(onTap: () {}, child: Icon(Icons.gamepad_rounded,color: Colors.white,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: 231,
                      height: 80,
                      color: Colors.white70,
                      child: Center(
                          child: Text(
                        "Global News",
                        style: TextStyle(
                            fontFamily: "Elyazisi",
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 220,
                child: Expanded(
                  child: Column(children: [
                    Expanded(
                      child: PageView(
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        controller: myController,
                        pageSnapping: true,
                        onPageChanged: (index) {
                          debugPrint("page change gelen index: $index");
                        },
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("Assets/img1.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("Assets/img2.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("Assets/img3.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 30,
                child: Text(""),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: PageView(
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        controller: myController,
                        pageSnapping: true,
                        onPageChanged: (index) {
                          debugPrint("page change gelen index: $index");
                        },
                        children: [
                          Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Assets/img5.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Assets/img6.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Assets/img4.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      height: 160,
                      width: 160,
                      child: PageView(
                        scrollDirection: Axis.vertical,
                        reverse: false,
                        controller: myController,
                        pageSnapping: true,
                        onPageChanged: (index) {
                          debugPrint("page change gelen index: $index");
                        },
                        children: [
                          Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Assets/img7.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Assets/img8.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Assets/img9.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        ],
                      ),
                    ),
                    SizedBox(width: 38,),
                    SizedBox(
                      height: 160,
                      width: 160,
                      child: PageView(
                        scrollDirection: Axis.vertical,
                        reverse: false,
                        controller: myController,
                        pageSnapping: true,
                        onPageChanged: (index) {
                          debugPrint("page change gelen index: $index");
                        },
                        children: [
                          Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Assets/img10.jfif"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Assets/img11.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Assets/img12.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]
            ),
          ),
            ])
         )) );
  }
}
