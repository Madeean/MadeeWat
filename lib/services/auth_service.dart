import 'package:firebase_auth/firebase_auth.dart';
import 'package:madee_wat/models/user_model.dart';
import 'package:madee_wat/services/user_service.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ""}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      print(userCredential);

      UserModel user = UserModel(
          id: userCredential.user!.uid,
          email: email,
          name: name,
          hobby: hobby,
          balance: 2000000);

      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      print("user credential $userCredential");

      UserModel user = await UserService().getUser(userCredential.user!.uid);

      print(user);
      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<void> SignOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw e;
    }
  }
}
