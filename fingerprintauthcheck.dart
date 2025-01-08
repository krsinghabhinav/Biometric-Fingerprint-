import 'package:apibasedproject/fingerAuth/fingerprintController.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Fingerprintauthcheck extends StatefulWidget {
  const Fingerprintauthcheck({super.key});

  @override
  _FingerprintauthcheckState createState() => _FingerprintauthcheckState();
}

class _FingerprintauthcheckState extends State<Fingerprintauthcheck> {
  Fingerprintcontroller fingerprintcontroller = Fingerprintcontroller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Fingerprint Loader Video')),
        body: Center(
          child: Column(
            children: [
              Text("Login", style: TextStyle(fontSize: 26)),
              SizedBox(height: 20),
              Image.asset(
                "assets/images/fingerprint.png",
                height: 100,
                width: 100,
              ),
              SizedBox(height: 100),
              Text("FingerPrint Auth", style: TextStyle(fontSize: 26)),
              SizedBox(height: 20),
              Center(
                child: Text(
                    "Authentication using fingerprint to procedd in application",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                    textAlign: TextAlign.center),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    fingerprintcontroller.checkprint();
                  },
                  child: Text("Check Fingerprint")),
            ],
          ),
        ));
  }
}
