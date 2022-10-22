// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'user_image_picker.dart';

// class AuthForm extends StatefulWidget {
//   AuthForm({
//     Key? key,
//     required this.submitFn,
//     required this.loading,
//   }) : super(key: key);

//   final bool loading;
//   final void Function({
//     required File image,
//     required String email,
//     required String userName,
//     required String password,
//     required bool isLogin,
//     required BuildContext context,
//   }) submitFn;

//   @override
//   State<AuthForm> createState() => _AuthFormState();
// }

// class _AuthFormState extends State<AuthForm> {
//   final _formkey = GlobalKey<FormState>();
//   var _userEmail = '';
//   var _userName = '';
//   var _userPassword = '';
//   var _isLogin = true;
//   File? _userImageFile;

//   void _pickImage(File image) {
//     _userImageFile = image;
//   }

//   _trySubmit() {
//     final isValid = _formkey.currentState!.validate();
//     FocusScope.of(context).unfocus();
//     if (_userImageFile == null && !_isLogin) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Please pick an image'),
//         ),
//       );
//       return;
//     }
//     if (isValid) {
//       _formkey.currentState!.save();
//       widget.submitFn(
//         image: _userImageFile!,
//         email: _userEmail.trim(),
//         userName: _userName.trim(),
//         password: _userPassword.trim(),
//         isLogin: _isLogin,
//         context: context,
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Card(
//         margin: EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Form(
//               key: _formkey,
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   if (!_isLogin)
//                     UserImagePicker(
//                       imagePickFn: _pickImage,
//                     ),
//                   TextFormField(
//                     key: ValueKey('email'),
//                     validator: (value) {
//                       if (value!.isEmpty || !value.contains('@')) {
//                         return 'Please enter a valid email address';
//                       }
//                       return null;
//                     },
//                     onSaved: (value) {
//                       _userEmail = value!;
//                     },
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                       labelText: 'Email Address',
//                     ),
//                   ),
//                   if (!_isLogin)
//                     TextFormField(
//                       key: ValueKey('user'),
//                       validator: (value) {
//                         if (value!.isEmpty || value.length < 3) {
//                           return 'Please Enter a valid user name';
//                         }
//                         return null;
//                       },
//                       onSaved: (value) {
//                         _userName = value!;
//                       },
//                       decoration: InputDecoration(
//                         labelText: 'Username',
//                       ),
//                     ),
//                   TextFormField(
//                     key: ValueKey('pass'),
//                     validator: (value) {
//                       if (value!.isEmpty || value.length < 8) {
//                         return 'Password must be atlease 8 character';
//                       }
//                       return null;
//                     },
//                     onSaved: (value) {
//                       _userPassword = value!;
//                     },
//                     decoration: InputDecoration(
//                       labelText: 'Password',
//                     ),
//                     obscureText: true,
//                   ),
//                   SizedBox(
//                     height: 12,
//                   ),
//                   if (widget.loading) const CircularProgressIndicator(),
//                   if (!widget.loading)
//                     SizedBox(
//                       height: 35,
//                       width: MediaQuery.of(context).size.width / 3,
//                       child: ElevatedButton(
//                         onPressed: _trySubmit,
//                         child: Text(_isLogin ? 'Login' : 'Sign Up'),
//                       ),
//                     ),
//                   if (!widget.loading)
//                     TextButton(
//                       onPressed: () {
//                         setState(() {
//                           _isLogin = !_isLogin;
//                         });
//                       },
//                       child: Text(_isLogin
//                           ? 'Create a new account'
//                           : 'Already have an account?'),
//                     ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
