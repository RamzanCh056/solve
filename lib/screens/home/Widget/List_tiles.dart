import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ListTile buildListTile(String img, String title) {
  return ListTile(
    leading: ImageIcon(
      AssetImage(img),
      size: 50,
      color: Colors.black,
    ),
    title: Text(title,
        style: GoogleFonts.arsenal(
          textStyle: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        )),
  );
}
