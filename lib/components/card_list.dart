import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CardList {
  final List _cardList = [
    [
      'assets/El-Nido3.png',
      'Discover El Nido Palawan: Your Tropical Paradise Awaits!',
      'Erick Mamolang',
      'October 27, 2023',
      'assets/share_icon.svg',
      'assets/profile3.png'
    ],
    [
      'assets/chocolate-hills.png',
      'Chase the Chocolate Hills: Your Dream Getaway!',
      'Nas Daily',
      'December 16 , 2023',
      'assets/share_icon.svg',
      'assets/profile2.png'
    ],
    [
      'assets/post2.png',
      'Education Crisis in the Philippines: Navigating Challenges for Future Growth',
      'Erick Mamolang',
      'October 13, 2022',
      'assets/share_icon.svg',
      'assets/profile3.png'
    ]
  ];
}

class MyCardList extends StatelessWidget {
  MyCardList({super.key});
  final cardList = CardList();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemExtent: 300,
          itemCount: cardList._cardList.length,
          itemBuilder: (context, index) {
            final cardData = cardList._cardList[index];
            return Padding(
              padding: const EdgeInsets.only(left: 5),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/news');
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(cardData[0]))),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Text(
                            cardData[1],
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 1),
                            title: Text(
                              cardData[2],
                              maxLines: 2,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                            ),
                            subtitle: Text(
                              cardData[3],
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF9397A0))),
                            ),
                            trailing: GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: const Color(0xffEFF5F4),
                                    borderRadius: BorderRadius.circular(12)),
                                child: SvgPicture.asset(cardData[4]),
                              ),
                            ),
                            leading: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(cardData[5])),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
