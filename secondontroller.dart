import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

class Secondontroller extends GetxController {
  final LocalAuthentication auth = LocalAuthentication();

  /// Checks for fingerprint capability and performs authentication.
  Future<void> checkFingerprint() async {
    try {
      // Check if the device supports biometrics
      final bool canCheckBiometrics = await auth.canCheckBiometrics;
      final bool isDeviceSupported = await auth.isDeviceSupported();

      if (canCheckBiometrics && isDeviceSupported) {
        // Attempt to authenticate using biometrics
        final bool isAuthenticated = await auth.authenticate(
          localizedReason: 'Please authenticate to access your account.',
          // options: const AuthenticationOptions(
          //   useErrorDialogs: true,
          //   stickyAuth: true,
          //   sensitiveTransaction: true,
          // ),
        );

        if (isAuthenticated) {
          print("Authentication successful.");
          Get.toNamed('/welcome');
        } else {
          print("Authentication failed or canceled by the user.");
        }
      } else {
        print("Biometric authentication is not available on this device.");
      }
    } catch (e) {
      // Log any exceptions
      print("An error occurred during biometric authentication: $e");
    }
  }
}
