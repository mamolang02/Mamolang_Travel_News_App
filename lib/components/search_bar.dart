import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 49,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(255, 255, 255, 255)),
        child: Row(children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                hintText: "Search for article..",
                hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 12, color: Color(0xFFA7A7A7))),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xFF5474FD),
                borderRadius: BorderRadius.circular(12)),
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/search_icon.svg')),
          )
        ]),
      ),
    );
  }
}
