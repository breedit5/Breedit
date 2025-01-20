import 'package:firebase_auth/firebase_auth.dart';

Future sendCode(String countryCode, String phoneNumber) async {
  try {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: "$countryCode $phoneNumber",
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? forceResendingToken) {
          // PhoneNumber.verify = verificationId;
        },
        timeout: const Duration(seconds: 90),
        codeAutoRetrievalTimeout: (String verificationId) {});
  } on FirebaseAuthException catch (e) {
    print(e);
  }
}
