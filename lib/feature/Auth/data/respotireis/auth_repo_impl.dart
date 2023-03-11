// import 'package:dartz/dartz.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
// import 'package:fruits_market/core/constants.dart';
// import 'package:fruits_market/features/Auth/domain/models/user_model.dart';
// import 'package:fruits_market/features/Auth/domain/respotries/auth_repo.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class AuthRepoImpl extends AuthRepo {
//   Future<Either<Exception, UserModel>> completeInformation(
//       {String? name,
//       String? phoneNumber,
//       String? address,
//       UserModel? user}) async {
//     try {
//       CollectionReference users =
//            FirebaseFirestore.instance.collection('users');
//       UserModel userModel = UserModel(
//           email: user!.email,
//           name: name,
//           phonNumber: phoneNumber,
//           address: address);
//       await users.add(userModel.toJson());
//       return Right(userModel);
//     } on Exception catch (e) {
//       return Left(e);
//     }
//   }

//   @override
//   Future<Either<Exception, UserModel>> loginWithFacebook() async {
//     try {
//       // Trigger the sign-in flow
//       final LoginResult loginResult = await FacebookAuth.instance.login();

//       // Create a credential from the access token
//       final OAuthCredential facebookAuthCredential =
//           FacebookAuthProvider.credential(loginResult.accessToken!.token);
//       UserCredential userCredential = await FirebaseAuth.instance
//           .signInWithCredential(facebookAuthCredential);
//       // Once signed in, return the UserCredential
//       return Right(UserModel(
//         email: userCredential.user!.email!,
//       ));
//     } catch (e) {
//       return Left(Exception('someting went wrong'));
//     }
//   }

//   @override
//   Future<Either<Exception, UserModel>> loginWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//       final GoogleSignInAuthentication googleAuth =
//           await googleUser!.authentication;

//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//       UserCredential userCredential =
//           await FirebaseAuth.instance.signInWithCredential(credential);

//       return Right(UserModel(
//         email: userCredential.user!.email!,
//       ));
//     } catch (e) {
//       return Left(Exception('something went wrong'));
//     }
//   }
// }
//++++++++++++++++++++++++++++++



// import 'package:newecommerce/feature/Auth/domain/respotries/auth_repo.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// class AuthRepoImpl extends AuthRepo {
// Future<UserCredential> signInWithGoogle() async {
//   // Trigger the authentication flow
//   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//   // Obtain the auth details from the request
//   final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

//   // Create a new credential
//   final credential = GoogleAuthProvider.credential(
//     accessToken: googleAuth?.accessToken,
//     idToken: googleAuth?.idToken,
//   );

//   // Once signed in, return the UserCredential
//   return await FirebaseAuth.instance.signInWithCredential(credential);
// }
// }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled12/feature/Auth/domain/respotries/auth_repo.dart';

class AuthRepoImpl extends AuthRepo{
  @override
  Future loginwithcompleteinformation(String? name, String? phnenumer, String? address) {
    // TODO: implement loginwithcompleteinformation
    throw UnimplementedError();
  }

  @override
  Future loginwithfacebook() {
    // TODO: implement loginwithfacebook
    throw UnimplementedError();
  }

  @override
  Future eloginwithgoogl() async {
    // TODO: implement loginwithgoogle
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future loginwithgoogle() {
    // TODO: implement loginwithgoogle
    throw UnimplementedError();
  }
}