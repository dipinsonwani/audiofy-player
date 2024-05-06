import 'package:audiofy/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:audiofy/features/auth/data/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final CollectionReference userCollection;
  AuthRemoteDataSourceImpl(
      {required this.userCollection, FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;

  final FirebaseAuth _firebaseAuth;
  @override
  Future<UserModel> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return UserModel.fromFirebaseUser(userCredential.user!);
    } catch (e) {
      throw Exception('Sign In Failed: $e');
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw Exception('Sign out Failed: $e');
    }
  }

  @override
  Future<UserModel> signUpWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      final userCredentials =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredentials.user == null) {
        throw Exception('Sign up failed : user is null');
      }
      await userCredentials.user?.updateDisplayName(name);
      userCollection
          .doc(userCredentials.user!.uid)
          .collection('favourites')
          .add({'new_user': true});
      return UserModel.fromFirebaseUser(userCredentials.user!);
    } catch (e) {
      throw Exception('Sign up failed: $e');
    }
  }

  @override
  Stream<User?> get authUser => _firebaseAuth.userChanges();
}
