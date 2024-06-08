import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/Screens/Gallery.dart';
import 'package:music_app/Screens/Home.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  final List<WidgetBuilder> detailPageBuilders = [
    (context) => const GalleryScreen(),
    (context) => const HomeScreen(),
    (context) => const PlayerScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(12, 12, 12, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    "assets/images/cat.png",
                    height: 501,
                    width: 800,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      top: 488,
                      left: 150,
                      child: Text(
                        "Alone in the Abyss",
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(230, 154, 21, 1),
                        ),
                      )),
                  Positioned(
                      top: 520,
                      left: 215,
                      child: Center(
                        child: Text(
                          "Youlakou",
                          style: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 530,
                      left: 450,
                      child:
                          Image.asset("assets/images/radix-icons_share-2.png"))
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 19,
                    width: 214,
                    child: Text(
                      "Dynamic Warmup |",
                      style: GoogleFonts.notoSerifGeorgian(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      "4 min",
                      style: GoogleFonts.notoSerifGeorgian(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              LinearPercentIndicator(
                width: 480,
                lineHeight: 10.0,
                percent: 0.2,
                backgroundColor: Color.fromRGBO(217, 217, 217, 0.19),
                barRadius: const Radius.circular(20),
                progressColor: Colors.orange,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Row(
                  children: [
                    Image.asset("assets/images/Vector(3).png"),
                    SizedBox(
                      width: 60,
                    ),
                    Image.asset("assets/images/previous.png"),
                    SizedBox(
                      width: 60,
                    ),
                    Image.asset("assets/images/play.png"),
                    SizedBox(
                      width: 60,
                    ),
                    Image.asset("assets/images/next.png"),
                    SizedBox(
                      width: 60,
                    ),
                    Image.asset("assets/images/mingcute_volume-fill.png")
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 6.0,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(19, 19, 19, 1),
            ),
            height: 82,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PlayerScreen(),
                      ),
                    );
                  },
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.favorite_outline,
                        color: Color.fromRGBO(230, 154, 21, 1),
                      ),
                      Text(
                        "Favourite",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(230, 154, 21, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 135, 135, 138),
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(157, 178, 206, 1),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.home_outlined,
                        color: Color.fromARGB(255, 135, 135, 138),
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 135, 135, 138),
                        ),
                      ),
                    ],
                  ),
                ),
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.car_repair_rounded,
                      color: Color.fromARGB(255, 135, 135, 138),
                    ),
                    Text(
                      "Cart",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 135, 135, 138),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GalleryScreen(),
                      ),
                    );
                  },
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 135, 135, 138),
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 135, 135, 138),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
