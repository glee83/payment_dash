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
                      smoothPageIndicator(activeIndex),
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
                      Column(
                        children: [
                          Text(
                            'Transactions',
                            style: GoogleFonts.poppins(
                              color: kDarkColor,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Transactions()
                        ],
                      ),
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

class Transactions extends StatelessWidget {
  const Transactions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, int index) {
          final trans = transactions[index];

          return ListTile(
            leading: Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius:
                      BorderRadius.circular(5.0),
                  image: DecorationImage(
                    image: AssetImage(
                      trans.imageUrl,
                    ),
                    fit: BoxFit.cover,
                  )),
            ),
            title: Text(
              trans.title,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(trans.subTitle),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  trans.amount.toString(),
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(trans.detail),
              ],
            ),
          );
        },
      ),
    );
  }
}
