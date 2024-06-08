import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/Screens/Gallery.dart';
import 'package:music_app/Screens/Player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<WidgetBuilder> detailPageBuilders = [
    (context) => const GalleryScreen(),
    (context) => const HomeScreen(),
    (context) => const PlayerScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              "assets/images/bg.png",
              height: 590,
              width: 600,
              fit: BoxFit.cover,
            ),
            const Positioned(
              top: 360,
              left: 50,
              child: Text("Dancing between",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w500)),
            ),
            const Positioned(
                top: 410,
                left: 50,
                child: Text("The Shadows",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w500))),
            const Positioned(
                top: 450,
                left: 50,
                child: Text("of rhythm",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w500))),
            Positioned(
              top: 530,
              left: 70,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GalleryScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: const Color.fromRGBO(255, 46, 0, 1)),
                  height: 47,
                  width: 261,
                  child: Center(
                    child: Text(
                      "Get started",
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 590,
                left: 70,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        border:
                            Border.all(color: Color.fromRGBO(255, 46, 0, 1))),
                    height: 47,
                    width: 261,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          "Continue with Email",
                          style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 46, 0, 1)),
                        ),
                      ),
                    ))),
            Positioned(
                top: 650,
                left: 70,
                child: Container(
                    height: 70,
                    width: 350,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Text(
                                "by continuing you agree to terms ",
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(172, 171, 171, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Center(
                              child: Text(
                                "of services and  Privacy policy ",
                                style: GoogleFonts.inter(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(172, 171, 171, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ))),
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
          height: 82.0,
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
                      color: Color.fromRGBO(157, 178, 206, 1),
                    ),
                    Text(
                      "Favourite",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(157, 178, 206, 1),
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
                      builder: (context) => const PlayerScreen(),
                    ),
                  );
                },
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.home_outlined,
                      color: Color.fromRGBO(230, 154, 21, 1),
                    ),
                    Text(
                      "Home",
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
      ),
    );
  }
}
