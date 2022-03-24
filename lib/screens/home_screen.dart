import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_dash/animation/animation_controler.dart';
import 'package:payment_dash/auth/local_auth.dart';
import 'package:payment_dash/routes/routing.dart';
import '../constants/constant.dart';
import 'package:local_auth/local_auth.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  style: GoogleFonts.poppins(
                    color: kDefaultColor,
                    fontSize: 42.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Scan your fingerprint to login',
                  style: GoogleFonts.poppins(
                    color: kDefaultColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 100),
            GestureDetector(
              onTap: () async {
                final isAutenticated = await LocalAuth.authenticate();
                if (isAutenticated) {
                  Navigator.of(context).pushNamed(Routes.dash);
                }
                // authenticate;
                // Navigator.pushNamed(context, Routes.dash);
              },
              child: Container(
                // width: 80.0,
                // height: 80.0,
                decoration: BoxDecoration(
                  // color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(50.0),
                  image: const DecorationImage(
                    scale: 1.9,
                    opacity: 3.0,
                    image: AssetImage('images/fingerprint.png'),
                  ),
                ),

                width: 350.0,
                height: 350.0,
                child: const CustomAnimation(
                  count: 3,
                  color: kDefaultColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
