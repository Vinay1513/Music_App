import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/Screens/Player.dart';
import 'package:music_app/Screens/Home.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  final List<String> images = [
    "assets/images/Rectangle32.png",
    "assets/images/Rectangle38.png",
    "assets/images/Rectangle39.png",
  ];

  final List<String> title = ["Dead inside", "Alone", "Heartless"];
  final List<String> title2 = ["We Are Chaos", "Smile", "We Are Chaos"];
  final List<String> date = ["2020", "2023", "2023"];

  final List<String> img2 = [
    "assets/images/Rectangle34.png",
    "assets/images/Rectangle40.png",
    "assets/images/Rectangle34.png",
  ];

  final List<String> star = ["*", "*", "*"];
  final List<IconData> icons = [
    Icons.more_vert_outlined,
    Icons.more_vert_outlined,
    Icons.more_vert_outlined,
  ];

  final List<WidgetBuilder> detailPageBuilders = [
    (context) => const GalleryScreen(),
    (context) => const HomeScreen(),
    (context) => const PlayerScreen(),
  ];

  Widget _buildSectionHeader(String title, String actionText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(255, 46, 0, 1),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(
            actionText,
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(248, 162, 69, 1),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDiscographyItem(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            images[index],
            height: 140,
            width: 138,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 5),
          Text(
            title[index],
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(203, 200, 200, 1),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            date[index],
            style: GoogleFonts.inter(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(203, 200, 200, 1),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSingleItem(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          Image.asset(
            img2[index],
            height: 64,
            width: 64,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title2[index],
                style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(203, 200, 200, 1),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    date[index],
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(132, 125, 125, 1),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    star[index],
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(203, 200, 200, 1),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    title2[index],
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(203, 200, 200, 1),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Icon(
            icons[index],
            color: Colors.white,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  "assets/images/gallery1.png",
                  width: double.infinity,
                  height: 367,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 220,
                  left: 50,
                  child: Text(
                    "A.L.O.N.E",
                    style: GoogleFonts.inter(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 270,
                  left: 50,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: const Color.fromRGBO(255, 46, 0, 1),
                    ),
                    height: 37,
                    width: 127,
                    child: Center(
                      child: Text(
                        "Subscribe",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(19, 19, 19, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/r1.png"),
                const SizedBox(width: 2),
                Image.asset("assets/images/r2.png"),
                const SizedBox(width: 2),
                Image.asset("assets/images/r2.png"),
              ],
            ),
            const SizedBox(height: 20),
            _buildSectionHeader("Discography", "See all"),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _buildDiscographyItem(index);
                },
              ),
            ),
            const SizedBox(height: 20),
            _buildSectionHeader("Popular singles", "See all"),
            const SizedBox(height: 20),
            ListView.builder(
              itemCount: title2.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return _buildSingleItem(index);
              },
            ),
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
                      color: Color.fromRGBO(230, 154, 21, 1),
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(230, 154, 21, 1),
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
