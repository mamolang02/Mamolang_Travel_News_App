import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShortSection extends StatelessWidget {
  final String text1, text;
  const ShortSection({super.key, required this.text1, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Text(
            text1,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color(0xFF5474FD),
                    fontSize: 12,
                    fontWeight: FontWeight.w400)),
          )
        ],
      ),
    );
  }
}
