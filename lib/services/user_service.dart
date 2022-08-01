import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:madee_wat/models/user_model.dart';

class UserService {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance,
      });
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> getUser(String id) async {
    try {
      UserModel? user;
      await _userReference.doc(id).get().then((acc) {
        user = UserModel(
            id: id,
            email: acc.get('email'),
            name: acc.get('name'),
            hobby: acc.get('hobby'),
            balance: acc.get('balance'));
      });

      return user!;
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await _userReference.doc(id).get();
      return UserModel(
          id: id,
          email: snapshot['email'],
          name: snapshot['name'],
          hobby: snapshot['hobby'],
          balance: snapshot['balance']);
    } catch (e) {
      throw e;
    }
  }
}
