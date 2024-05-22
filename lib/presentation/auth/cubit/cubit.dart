import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';
class AuthCubit extends Cubit<AuthMainState> {
  AuthCubit() : super(AuthInitState());
  static AuthCubit get(context) => BlocProvider.of(context);
  bool hidePasse=false;
  hidePass(){
    hidePasse=!hidePasse;
    emit(HidePasswordState());
  }
  signInCubit(emailAddress, password) async {
    emit(EmptyLoginState());
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: "$emailAddress", password: password);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    emit(SignInState());
  }

  signUpCubit(emailAddress, password,name) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "$emailAddress",
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        // print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    print("e");
    createProfile(FirebaseAuth.instance.currentUser!.uid,name,emailAddress);
    emit(SignUpState());
  }
  createProfile(uid,name,emailAddress)async{
   await FirebaseFirestore.instance.collection("Profile").doc(uid).set(
     {
       "name":name,
       "user_type":"admin",
     }
   );
  }
}
