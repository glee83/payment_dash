import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_dash/constants/constant.dart';
import 'package:payment_dash/routes/routing.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../custom_widget/custom_appbar.dart';
import '../custom_widget/transactions.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80.0,
        // width: 60.0,
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FaIcon(
                  FontAwesomeIcons.wallet,
                  color: kDefaultColor,
                ),
                SizedBox(width: 60.0),
                FaIcon(
                  FontAwesomeIcons.circle,
                  color: kDefaultColor,
                ),
                SizedBox(width: 60.0),
                FaIcon(
                  FontAwesomeIcons.dashcube,
                  color: kDefaultColor,
                ),
                SizedBox(width: 60.0),
                FaIcon(
                  FontAwesomeIcons.sun,
                  color: kDefaultColor,
                )
              ],
            ),
            Container(
              width: 130.0,
              height: 5.0,
              decoration: BoxDecoration(
                color: kDefaultColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
          ],
        ),
      ),
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                const Custom_head(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.zero,

                  // width: double.infinity,
                  // height: 800.0,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: kDefaultColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          top: 20.0,
                        ),
                        child: Text(
                          'My cards',
                          style: GoogleFonts.poppins(
                            color: kDarkColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 230.0,
                        child: CarouselSlider.builder(
                          options: CarouselOptions(
                            height: 220.0,
                            autoPlay: true,
                            reverse: false,
                            initialPage: 0,
                            viewportFraction: 1,
                            autoPlayInterval: const Duration(seconds: 4),
                            onPageChanged: (index, reason) {
                              setState(() => activeIndex = index);
                              print(card.length);
                            },
                          ),
                          itemCount: card.length,
                          itemBuilder: (context, int index, realIndex) {
                            // if (index == card.length + 1) {
                            //   return const SizedBox(
                            //     width: 10.0,
                            //   );
                            // }
                            final cards = card[index];

                            return InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed(Routes.user);
                              },
                              child: Container(
                                // padding: const EdgeInsets.symmetric(
                                //   horizontal: 10.0,
                                //   vertical: 20.0,
                                // ),
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                  vertical: 10.0,
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: 200.0,
                                decoration: BoxDecoration(
                                  color: card[index].id == 1
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
                                            Container(
                                              width: 60.0,
                                              child: Row(
                                                children: [
                                                  Stack(
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Positioned(
                                                        left: 20,
                                                        child: Container(
                                                          width: 40.0,
                                                          height: 40.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color
                                                                    .fromARGB(
                                                                195,
                                                                255,
                                                                255,
                                                                255),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        child: Container(
                                                          width: 40.0,
                                                          height: 40.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color
                                                                    .fromARGB(
                                                                106,
                                                                255,
                                                                255,
                                                                255),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
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
                              ),
                            );
                          },
                        ),
                      ),
                      Center(child: indicator(activeIndex)),
                      const SizedBox(height: 20.0),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xffefe9fc),
                              ),
                              child: const Center(
                                  child: FaIcon(FontAwesomeIcons.share)),
                            ),
                            const SizedBox(width: 10.0),
                            Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xffebf1d4),
                              ),
                              child: const Center(
                                  child: FaIcon(FontAwesomeIcons.pinterest)),
                            ),
                            const SizedBox(width: 10.0),
                            Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xfff2e6e8),
                              ),
                              child: const Center(
                                  child: FaIcon(FontAwesomeIcons.shoppingCart)),
                            ),
                            const SizedBox(width: 10.0),
                            Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color(0xffe6f5f9),
                              ),
                              child: const Center(
                                  child: FaIcon(FontAwesomeIcons.dashcube)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Transaction(),
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
