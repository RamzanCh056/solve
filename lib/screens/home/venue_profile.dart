import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Widget/bottom_navbar.dart';
import 'Widget/music_container.dart';

class VenueProfile extends StatelessWidget {
  const VenueProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/Rectangle.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 220,
                  left: 230,
                  child: Container(
                    height: 39,
                    width: 141,
                    decoration: const BoxDecoration(
                        color: Color(0xFFFF6712),
                        borderRadius: BorderRadius.all(Radius.circular(9))),
                    child: Row(children: [
                      const ImageIcon(
                        AssetImage('assets/icons/Offer Hot Price.png'),
                        size: 50,
                        color: Colors.black,
                      ),
                      Text('HOT PICK',
                          style: GoogleFonts.arsenal(
                              textStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)))
                    ]),
                  )),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.ios_share_outlined,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.messenger_outline_rounded,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 10),
              child: Text('Club Liquids',
                  style: GoogleFonts.arsenal(
                      textStyle: const TextStyle(color: Colors.black),
                      fontSize: 36,
                      fontWeight: FontWeight.bold)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Text(
                    'Live performance',
                    style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                      color: Color(0xFFF99E16),
                      fontSize: 14,
                    )),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  Icons.circle,
                  size: 5,
                  color: Color(0xFFF99E16),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'night club',
                  style: GoogleFonts.arsenal(
                      textStyle: const TextStyle(
                          color: Color(0xFFF99E16), fontSize: 14)),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Icon(
                  Icons.circle,
                  size: 5,
                  color: Color(0xFFF99E16),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "\$\$\$",
                  style: TextStyle(color: Color(0xFFF99E16), fontSize: 14),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                children: const [
                  Icon(
                    Icons.access_time_outlined,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '10:00 - 02:00',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Open now",
                    style: TextStyle(
                        color: Color(0xFF0BF0A9), fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    '1.6 km',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(Icons.circle, size: 5, color: Colors.black),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Storgatan 21, Umea',
                      style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text('01 983 76432',
                      style: GoogleFonts.arsenal(
                        textStyle: const TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Text(
                'Ideal place for',
                style: GoogleFonts.arsenal(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Text(
                'Live music, great food, very good ambience, city center, and party till late night :)',
                style: GoogleFonts.arsenal(
                  textStyle: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 20),
              child: Text(
                'Music',
                style: GoogleFonts.arsenal(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MusicContainers(
                    color: Color(0xFF5FDED7),
                    name: "Rock",
                  ),
                  MusicContainers(
                    color: Color(0xFFAFEFEB),
                    name: "Indie",
                  ),
                  MusicContainers(
                    color: Color(0xFFE7FAF9),
                    name: "Electro",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 100,),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF95C0C2),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    );
  }
}
