import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_dash/routes/routing.dart';
import '../constants/constant.dart';
import 'package:local_auth/local_auth.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LocalAuthentication auth = LocalAuthentication();
  bool? _canCheckBiometric;

  List<BiometricType>? _availableBiometics;
  String isAuthorized = 'Not autorized';

  Future<void> checkBiometric() async {
    late bool canCheckBiometric;

    try {
      canCheckBiometric = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      canCheckBiometric = false;
      print(e);
    }

    if (!mounted) return;

    setState(() {
      _canCheckBiometric = canCheckBiometric;
    });
  }

  Future<void> getAvailableBiometrics() async {
    late List<BiometricType> availableBiometrics;

    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      // availableBiometrics = <BiometricType>[];
      print(e);
    }

    if (!mounted) {
      return;
    }

    setState(() {
      _availableBiometics = availableBiometrics;
    });
  }

  Future<void> authenticate() async {
    bool isAuthenticated = false;

    try {
      isAuthenticated = await auth.authenticate(
        localizedReason: 'Scan your finger to login',
        useErrorDialogs: true,
        stickyAuth: false,
        biometricOnly: true,
      );
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    setState(() {
      isAuthorized = isAuthenticated ? "Successful" : "Failed to authenticate";
      print(isAuthorized);
    });
  }

  @override
  void initState() {
    checkBiometric();
    getAvailableBiometrics();
    super.initState();
  }

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
              onTap: () {
                Navigator.pushNamed(context, Routes.dash);
              },
              child: Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(50.0),
                  image: const DecorationImage(
                    image: AssetImage('images/fingerprint.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
