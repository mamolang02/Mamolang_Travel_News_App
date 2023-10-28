import 'package:mamolang_travel_news_app/components/text_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: camel_case_types
class postDetails {
  final List postInfo = [
    [
      'assets/post1.png',
      'News: Politics',
      'Political Landscape in the Philippines: Recent Shifts and Critical Concerns',
      '16th May',
      '09:32 pm'
    ],
    [
      'assets/post2.png',
      'News: Education',
      'Education Crisis in the Philippines: Navigating Challenges for Future Growth',
      '7th June',
      '09:11 am'
    ],
    [
      'assets/post3.png',
      'News: Food',
      'Surging Food Costs: A Mounting Concern for Shoppers and Economic Analysts',
      '9th July',
      '06:40 pm'
    ]
  ];
}

class MyPosts extends StatelessWidget {
  MyPosts({
    super.key,
  });
  final post = postDetails();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: post.postInfo.length,
        itemBuilder: (context, index) {
          final postIndex = post.postInfo[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: SizedBox(
              height: 100,
              child: Row(children: [
                Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.white),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(postIndex[0])))),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PostText1(text: postIndex[1]),
                    PostText2(text: postIndex[2]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/calendar_icon.svg'),
                              const SizedBox(
                                width: 5,
                              ),
                              PostText1(text: postIndex[3])
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/time_icon.svg'),
                              const SizedBox(
                                width: 5,
                              ),
                              PostText1(text: postIndex[4]),
                            ],
                          )
                        ])
                  ],
                )),
              ]),
            ),
          );
        },
      ),
    );
  }
}
