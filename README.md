# Biometric-Fingerprint-

To properly integrate biometric authentication in your Flutter app, you need to make the following changes to the specified files:

AndroidManifest.xml
    <uses-permission android:name="android.permission.USE_BIOMETRIC" />
    <uses-permission android:name="android.permission.USE_FINGERPRINT" />
    <uses-permission android:name="android.permission.INTERNET" />

MainActivity.kt
   package com.example.apibasedproject

import io.flutter.embedding.android.FlutterFragmentActivity

class MainActivity : FlutterFragmentActivity() {
    // Additional configurations can be added here if needed
}

