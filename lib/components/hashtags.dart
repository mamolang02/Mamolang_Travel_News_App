import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HashTagsList {
  final List<String> tagsList = [
    '#Health',
    '#Music',
    '#Technology',
    '#Sports',
    '#Education',
    '#Politics',
    '#eSports',
  ];
}

class MyHashTags extends StatelessWidget {
  MyHashTags({super.key});
  final hashTagsList = HashTagsList();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 20,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: hashTagsList.tagsList.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  hashTagsList.tagsList[index],
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xff9397A0))),
                ));
          },
        ),
      ),
    );
  }
}
