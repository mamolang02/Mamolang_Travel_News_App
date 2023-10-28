import 'package:carousel_slider/carousel_slider.dart';
import 'package:mamolang_travel_news_app/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class carousel {
  final carouselList = [
    'assets/El-Nido1.png',
    'assets/El-Nido2.PNG',
    'assets/El-Nido3.png',
  ];
}

class NewsDetail extends StatefulWidget {
  const NewsDetail({super.key});

  @override
  State<NewsDetail> createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  @override
  // ignore: override_on_non_overriding_member
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider.builder(
              carouselController: _controller,
              itemCount: carousel().carouselList.length,
              itemBuilder: (context, index, realIndex) {
                final curImage = carousel().carouselList[index];
                return buildImage(curImage, index);
              },
              options: CarouselOptions(
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                  autoPlay: true,
                  initialPage: _current,
                  height: MediaQuery.of(context).size.height / 1.9)),
          const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(icons: 'assets/arrow_back_icon.svg'),
                    MyButton(icons: 'assets/bookmark_white_icon.svg'),
                  ]),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        _controller.animateToPage(0,
                            duration: const Duration(milliseconds: 500));
                      },
                      icon: SvgPicture.asset(
                        _current == 0
                            ? 'assets/carousel_indicator_enabled.svg'
                            : 'assets/carousel_indicator_disabled.svg',
                      )),
                  IconButton(
                      onPressed: () {
                        _controller.animateToPage(1,
                            duration: const Duration(milliseconds: 500));
                      },
                      icon: SvgPicture.asset(
                        _current == 1
                            ? 'assets/carousel_indicator_enabled.svg'
                            : 'assets/carousel_indicator_disabled.svg',
                      )),
                  IconButton(
                      onPressed: () {
                        _controller.animateToPage(2,
                            duration: const Duration(milliseconds: 500));
                      },
                      icon: SvgPicture.asset(
                        _current == 2
                            ? 'assets/carousel_indicator_enabled.svg'
                            : 'assets/carousel_indicator_disabled.svg',
                      )),
                ]),
          ),
          Positioned.fill(
            top: MediaQuery.of(context).size.height / 2.05,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.25,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                  color: Color.fromARGB(255, 255, 255, 255)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListView(padding: EdgeInsets.zero, children: [
                  Text(
                    'Discover El Nido Palawan: Your Tropical Paradise Awaits!',
                    maxLines: 4,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 236, 240, 236),
                        border: Border.all(color: Colors.black, width: .5),
                        borderRadius: BorderRadius.circular(16)),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/profile3.png')),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Erick Mamolang    Oct 27  ●  10 min read')
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Text(
                      "Immerse Yourself in the Allure of El Nido Palawan: Where Nature's Wonders Beckon. The pristine beauty of this tropical gem is ready to enchant your senses. Delve into the magic of El Nido Palawan and craft memories as extraordinary as its landscapes.",
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.poppins(
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.w500)),
                    ),
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildImage(String curImage, int index) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      width: double.infinity,
      child: Image.asset(
        curImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
