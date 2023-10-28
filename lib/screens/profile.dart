import 'package:mamolang_travel_news_app/components/profile_post.dart';
import 'package:mamolang_travel_news_app/components/short_section.dart';
import 'package:mamolang_travel_news_app/components/story_tile.dart';
import 'package:mamolang_travel_news_app/components/text_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.transparent),
            child: Padding(
              padding: EdgeInsets.zero,
              child: Row(children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/profile3.png')),
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(16)),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Erick Mamolang',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Flutter Developer',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xFF5474FD)),
                    child: Text(
                      'Following',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Greetings! I go by the name Erick Mamolang, and I'm an enthusiastic Flutter developer. I'm consistently expanding my knowledge and advancing in the dynamic realm of application development.",
            textAlign: TextAlign.justify,
            style: GoogleFonts.poppins(
                color: const Color(0xFF9397A0),
                fontWeight: FontWeight.w400,
                height: 1.2,
                fontSize: 14),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 95,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color(0xFF19202D)),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(text1: '54,456'),
                        MyText2(text2: 'Followers')
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: Color(0xFFC1D4F9),
                    width: 5,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(text1: '1,21K'),
                        MyText2(text2: 'Posts')
                      ],
                    ),
                  ),
                  VerticalDivider(
                    color: Color(0xFFC1D4F9),
                    width: 5,
                    endIndent: 10,
                    indent: 10,
                    thickness: 1,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(text1: '4,21K'),
                        MyText2(text2: 'Following')
                      ],
                    ),
                  ),
                ]),
          ),
          const SizedBox(
            height: 20,
          ),
          const ShortSection(text: "Erick's Posts", text1: 'View All'),
          const SizedBox(
            height: 20,
          ),
          MyPosts(),
          const SizedBox(
            height: 20,
          ),
          const ShortSection(text: 'Popular From Erick', text1: ''),
          const SizedBox(
            height: 20,
          ),
          const PopularPost(),
        ]),
      ),
    );
  }
}
