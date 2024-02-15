import 'package:firebase_auth/firebase_auth.dart';

class AuthService(){

  FirebaseAuth auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null;
  }

  Future signInEmailAndPassword(String email, String password){

    try{
      AuthResult authResult = await _auth.signInWithEmilAndPassword
        (email:email, password:password);

      FirebaseUser firebaseuser = authResult.user;
      return _userFromFirebaseUser(firebaseuser);
      )
    }catch(e){
      print(e.toString())
    }

    Future signUpWithEmailAndPassword(String email, String password) async{
      try{
        AuthResult authResult = await _auth.createUsrWithEmailAndPassword
        (email: email, password: password);
        FirebaseUSer firebaseuser = authResult.user;
        return _userFromFirebase(firebaseuser);
      }catch(e){
        print(e.toString());
      }
    }

    Future signOut() async{
      try{
        return await _auth.signOut();
      }catch(e){
        print(e.toString());
        return null;
      }
    }
  }
}