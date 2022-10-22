// // ignore_for_file: prefer__ructors, prefer_const_constructors, duplicate_ignore
// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'Widgets/auth_form.dart';

// class Auth extends StatefulWidget {
//   const Auth({Key? key}) : super(key: key);
//   @override
//   State<Auth> createState() => _AuthState();
// }

// class _AuthState extends State<Auth> {
//   final _auth = FirebaseAuth.instance;
//   bool loading = false;
//   void _submitAuthForm({
//     required File image,
//     required String email,
//     required String userName,
//     required String password,
//     required BuildContext context,
//     required bool isLogin,
//   }) async {
//     UserCredential userCredential;
//     if (isLogin) {
//       try {
//         setState(() {
//           loading = true;
//         });
//         userCredential = await _auth.signInWithEmailAndPassword(
//           email: email,
//           password: password,
//         );
//         setState(() {
//           loading = false;
//         });
//       } on FirebaseAuthException catch (e) {
//         if (e.code == "User-not-found.") {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text('No user found for that email.'),
//               backgroundColor: Colors.black,
//             ),
//           );
//         } else if (e.code == "Wrong-password") {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text('Wrong password.'),
//               backgroundColor: Colors.red,
//             ),
//           );
//         }
//         setState(() {
//           loading = false;
//         });
//       } catch (e) {
//         (e);
//         setState(() {
//           loading = false;
//         });
//       }
//     } else {
//       try {
//         setState(() {
//           loading = true;
//         });
//         userCredential = await _auth.createUserWithEmailAndPassword(
//           email: email,
//           password: password,
//         );

//         final ref = FirebaseStorage.instance
//             .ref()
//             .child(userCredential.user!.uid + '.jpg');

//         await ref.putFile(image);
//         final url = await ref.getDownloadURL();

//         await FirebaseFirestore.instance
//             .collection('users')
//             .doc(userCredential.user!.uid)
//             .set({
//           "username": userName,
//           "email": email,
//           "image_url": url,
//         });

//         setState(() {
//           loading = false;
//         });
//       } on FirebaseAuthException catch (e) {
//         if (e.code == "weak-password") {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text('Password is too weak'),
//               backgroundColor: Colors.black,
//             ),
//           );
//         } else if (e.code == "email-alread-in-use") {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text('Account already exists.'),
//             ),
//           );
//         }
//         setState(() {
//           loading = false;
//         });
//       } catch (e) {
//         if (mounted) {
//           setState(() {
//             loading = false;
//           });
//         }
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlue,
//       body: AuthForm(
//         loading: loading,
//         submitFn: _submitAuthForm,
//       ),
//     );
//   }
// }
