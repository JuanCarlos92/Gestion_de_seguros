// import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
// import 'package:screen_protector/screen_protector.dart';
//import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';

class SecurityService {
  // static Future<void> initializeSecurity() async {
  //   //await ScreenProtector.preventScreenshotOn();
  //   bool isRooted = await FlutterJailbreakDetection.jailbroken;
  //   if (isRooted) {
  //     SystemNavigator.pop();
  //   }
  // }

  static Future<bool> authenticateWithBiometrics() async {
    final LocalAuthentication auth = LocalAuthentication();
    bool canCheck = await auth.canCheckBiometrics;
    if (!canCheck) return false;
    return await auth.authenticate(
        localizedReason: 'Accede con tu huella o rostro');
  }
}
