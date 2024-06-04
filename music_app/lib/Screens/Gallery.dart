import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/Screens/Player.dart';
import 'package:music_app/Screens/Home.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Search Page'));
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Cart Page'));
  }
}

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
    Icons.more_vert_outlined
  ];

  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          PlayerScreen(),
          SearchPage(),
          HomeScreen(),
          CartPage(),
          GalleryScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/fav.png')),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/search.png')),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/linear.png')),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/cart.png')),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/user.png')),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        unselectedLabelStyle:
            const TextStyle(color: Color.fromARGB(255, 219, 122, 11)),
        onTap: _onItemTapped,
      ),
    );
  }

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
}
