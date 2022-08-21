import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicContainers extends StatelessWidget {
  const MusicContainers({Key? key, required this.color, required this.name})
      : super(key: key);
  final color;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 50,
      padding: const EdgeInsets.only(left: 40, top: 15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1.5,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        name,
        style: GoogleFonts.arsenal(
            textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16)),
      ),
    );
  }
}
