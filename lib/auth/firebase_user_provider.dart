import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CrowdedVoiceFirebaseUser {
  CrowdedVoiceFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CrowdedVoiceFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CrowdedVoiceFirebaseUser> crowdedVoiceFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CrowdedVoiceFirebaseUser>(
      (user) {
        currentUser = CrowdedVoiceFirebaseUser(user);
        return currentUser!;
      },
    );
