import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/Screens/Gallery.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: Stack(
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
                      border: Border.all(color: Color.fromRGBO(255, 46, 0, 1))),
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
    );
  }
}
