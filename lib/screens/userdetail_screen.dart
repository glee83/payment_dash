import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_dash/custom_widget/background.dart';
import 'package:payment_dash/screens/home_screen.dart';

import '../constants/constant.dart';

class UserScreen extends StatelessWidget {
  UserScreen({
    Key? key,
  }) : super(key: key);
  // final CardModel cards;

  @override
  Widget build(BuildContext context) {
    return Custom_background(
        child: Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const FaIcon(
                FontAwesomeIcons.lessThan,
                size: 20,
              ),
            ),
            // const SizedBox(width: 10.0),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'New transaction',
                style: GoogleFonts.poppins(
                  color: kDarkColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Card',
                style: GoogleFonts.poppins(
                  color: kDarkColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              // padding: const EdgeInsets.symmetric(
              //   horizontal: 10.0,
              //   vertical: 20.0,
              // ),
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 20.0,
              ),
              width: MediaQuery.of(context).size.width,
              height: 150.0,
              decoration: BoxDecoration(
                color: kSecondaryColor,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Debit card',
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
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              195, 255, 255, 255),
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      child: Container(
                                        width: 40.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              106, 255, 255, 255),
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '4120 **** **** 4634',
                            style: GoogleFonts.lato(
                              color: kDefaultColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 100.0),
                          Text(
                            '03/23',
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
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Amount',
                style: GoogleFonts.poppins(
                  color: kDarkColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: Text(
                '130',
                style: GoogleFonts.poppins(
                  color: kDarkColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            ListTile(
              leading: Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50.0),
                  image: const DecorationImage(
                    image: AssetImage(
                      'images/pexels-anna.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: const Text('Timothy DamBam '),
            ),
            ListTile(
              leading: Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50.0),
                  image: const DecorationImage(
                    image: AssetImage(
                      'images/pexels-polina.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: const Text('Timothy DamBam '),
            ),
            ListTile(
              leading: Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50.0),
                  image: const DecorationImage(
                    image: AssetImage(
                      'images/tima.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: const Text('Timothy DamBam '),
            ),
            ListTile(
              leading: Container(
                width: 45.0,
                height: 45.0,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50.0),
                  image: const DecorationImage(
                    image: AssetImage(
                      'images/polina.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: const Text('Timothy DamBam '),
            ),
          ],
        )
      ],
    ));
  }
}
