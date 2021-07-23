import 'package:firebase_auth/firebase_auth.dart';

Future<User> Signup(
    String confiormpassword, String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    User user = (await _auth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;
    if (user != null) {
      print("Account created Sucessfull");
    } else {
      print("Account creation failed");
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future<User> Login(String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  try {
    User user = (await _auth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;
    if (user != null) {
      print("Login Sucessfull");
      return user;
    } else {
      print("Login failed");
      return user;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

Future logout() async {
  FirebaseAuth _auth = FirebaseAuth.instance;
  try {
    await _auth.signOut();
  } catch (e) {
    print("error");
  }
}
