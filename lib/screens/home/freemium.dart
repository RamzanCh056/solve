import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solve/screens/home/venue_profile.dart';

import 'Widget/List_tiles.dart';
import 'Widget/bottom_navbar.dart';

final List<String> imgList = [
  "assets/pic1.png",
  "assets/pic2.jpg",
  "assets/pic2.jpg",
];

class MusicianFreemium extends StatelessWidget {
  const MusicianFreemium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text('Artist EPK',
              style: GoogleFonts.arsenal(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ))),
      body: SingleChildScrollView(
        child: Column(children: [
          CarouselSlider(
              options: CarouselOptions(
                height: height / 2.6,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: imgList
                  .map((e) => Container(
                        child: Container(
                          margin: const EdgeInsets.all(5.0),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                            child: Image.asset(e,
                                fit: BoxFit.cover, width: 1000.0),
                          ),
                        ),
                      ))
                  .toList()),
          SizedBox(
            height: height / 100,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: ImageIcon(
                  AssetImage('assets/icons/thumbsup.png'),
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: ImageIcon(
                  AssetImage(
                    'assets/icons/comment.png',
                  ),
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: ImageIcon(
                  AssetImage('assets/icons/clap.png'),
                ),
              ),
              SizedBox(width: width / 10),
              Column(
                children: [
                  Text('Believer',
                      style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      )),
                  Text('IMAGINE DARGON',
                      style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25.0, right: 10),
                child: ImageIcon(
                  AssetImage('assets/icons/fav.png'),
                  color: Colors.red,
                ),
              ),
              const ImageIcon(
                AssetImage('assets/icons/share.png'),
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: height / 100,
          ),
          Container(
            padding: const EdgeInsets.only(left: 100),
            height: 450,
            width: double.infinity,
            color: const Color(0xFFEEF4F1),
            child: Column(children: [
              buildListTile("assets/icons/Book.png", "Biography"),
              buildListTile("assets/icons/Listen to Music.png", "Musicology"),
              buildListTile("assets/icons/Video Message.png", "Videos"),
              buildListTile("assets/icons/iOS Photos.png", "Photos"),
              buildListTile("assets/icons/Billboard.png", "Social Media"),
              buildListTile("assets/icons/Info.png", "Booking Info"),
            ]),
          )
        ]),
      ),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF95C0C2),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {

          Navigator.push(context, MaterialPageRoute(builder: (context)=>const VenueProfile()));
        },
      ),
    );
  }
}
