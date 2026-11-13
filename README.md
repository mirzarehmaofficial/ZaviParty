# NufiParty Flutter starter

This is the first source-code foundation for NufiParty, a royal/electric-blue social voice-chat app.

## Important status
This is a **UI starter**, not a finished voice-chat service. The room cards are demo content. Login, real-time voice rooms, messaging, gifts, wallet, moderation and user IDs still need implementation and backend configuration. Firebase and LiveKit dependencies are included as a starting point; credentials are not included.

## Develop from an Android phone
A practical phone-only route is a browser-based cloud development environment such as GitHub Codespaces.

1. Create a GitHub account if you do not already have one.
2. Upload this project ZIP to a new GitHub repository (or extract it in a cloud workspace).
3. Open the repository in a Flutter-capable cloud workspace with the Flutter SDK installed.
4. In the terminal, run:

```bash
flutter create --platforms=android,ios .
flutter pub get
flutter run
```

If the workspace does not have Flutter installed, choose a Flutter-ready environment or install the Flutter SDK there first.

## Configure Firebase
1. Create a Firebase project at https://console.firebase.google.com/
2. Register an Android app using your final Android application ID.
3. Register an iOS app using your final bundle ID.
4. In the cloud terminal install FlutterFire CLI and run:

```bash
dart pub global activate flutterfire_cli
flutterfire configure
```

5. Add the generated `firebase_options.dart` and initialize Firebase in `main.dart` before using Firebase services.
6. Enable only the Firebase products you intend to use, and configure security rules before any public launch.

## Configure real voice
Create a LiveKit project and keep its API secret on a trusted backend. Your app must request a short-lived room token from your backend. **Never put a LiveKit API secret in Flutter code.**

## Build Android APK

```bash
flutter build apk --release
```

The APK is normally created at `build/app/outputs/flutter-apk/app-release.apk`.

## Build iOS
The Flutter source is shared, but compiling, signing and distributing an iOS app requires macOS with Xcode and Apple signing credentials. You can prepare the iOS target from a cloud environment, but the final signed iOS build needs a suitable Mac-based build service.

## Suggested next milestones
1. Authentication and unique user IDs.
2. Firestore user and room data models with secure rules.
3. LiveKit token backend and real voice-room join/leave/mute flows.
4. Direct messages and push notifications.
5. Gifts, wallet ledger, VIP and family features.
6. Admin/moderation tools, testing, privacy policy and release hardening.
