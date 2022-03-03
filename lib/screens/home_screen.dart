import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_dash/constants/constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int activeIndex = 0;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(),
                          const SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Michael',
                                style: GoogleFonts.lato(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: kDefaultColor,
                                ),
                              ),
                              Text(
                                'William Tach',
                                style: GoogleFonts.lato(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: kDefaultColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.bars,
                          color: kDefaultColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.zero,

                  // width: double.infinity,
                  height: 800.0,
                  decoration: const BoxDecoration(
                    color: kDefaultColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),

                  child: Column(
                    children: [
                      Text(
                        'My cards',
                        style: GoogleFonts.lato(
                          color: kDarkColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 230.0,
                        child: CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 220.0,
                            autoPlay: true,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() => activeIndex = index);
                            },
                          ),
                          itemCount: card.length,
                          itemBuilder: (context, int index, realcontext) {
                            // if (index == card.length + 1) {
                            //   return const SizedBox(
                            //     width: 10.0,
                            //   );
                            // }
                            final cards = card[index];

                            return Container(
                              // padding: const EdgeInsets.symmetric(
                              //   horizontal: 10.0,
                              //   vertical: 20.0,
                              // ),
                              margin: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 20.0,
                              ),
                              width: MediaQuery.of(context).size.width,
                              height: 200.0,
                              decoration: BoxDecoration(
                                color: card[index] == 0
                                    ? kSecondaryColor
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                        vertical: 15.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            cards.cardType,
                                            style: GoogleFonts.lato(
                                              color: kDefaultColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          const CircleAvatar(
                                            backgroundColor: kDefaultColor,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 65.0,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                        vertical: 15.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            cards.cardNum,
                                            style: GoogleFonts.lato(
                                              color: kDefaultColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          const SizedBox(width: 100.0),
                                          Text(
                                            cards.exprd,
                                            style: GoogleFonts.lato(
                                              color: kDefaultColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    left: 20.0,
                                    child: Text(
                                      cards.amount,
                                      style: GoogleFonts.lato(
                                        color: kDefaultColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      smoothPageIndicator(activeIndex)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  } 
}
