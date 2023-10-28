import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarTile extends StatelessWidget {
  const AppBarTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          'Welcome Back!',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF19202D))),
        ),
        subtitle: Text('Monday, 3 October',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF9397A0),
                  fontWeight: FontWeight.w500),
            )),
        leading: Container(
          width: 49,
          height: 49,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/profile3.png'))),
        ));
  }
}
