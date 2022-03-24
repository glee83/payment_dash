import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuth {
  static final auth = LocalAuthentication();

  late final List<BiometricType> _availableBiometics = [];
  String isAuthorized = 'Not autorized';

  // Future<void> checkBiometric() async {
  //   late bool canCheckBiometric;

  //   try {
  //     canCheckBiometric = await auth.canCheckBiometrics;
  //   } on PlatformException catch (e) {
  //     canCheckBiometric = false;
  //     print(e);
  //   }

  //   if (!mounted) return;

  //   setState(() {
  //     _canCheckBiometric = canCheckBiometric;
  //   });
  // }

  // static Future<void> getAvailableBiometrics() async {
  //   late List<BiometricType> availableBiometrics;

  //   try {
  //     availableBiometrics = await auth.getAvailableBiometrics();
  //   } on PlatformException catch (e) {
  //     // availableBiometrics = <BiometricType>[];
  //     print(e);
  //   }

  //   if (!mounted) {
  //     return;
  //   }

  //   setState(() {
  //     _availableBiometics = availableBiometrics;
  //   });
  // }
  static Future<bool> hasBiometrics() async {
    try {
      return await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      return false;
    }
  }

  static Future<bool> authenticate() async {
    bool isAvailable = await hasBiometrics();
    if (!isAvailable) {
      return false;
    }

    try {
      return await auth.authenticate(
        localizedReason: 'Scan your finger to login',
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      print(e);
      return false;
    }
  }
}
