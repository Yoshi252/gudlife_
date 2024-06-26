import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gudlife_/screens/quiz.dart';
import 'package:gudlife_/widgets/sign_in_logo_buttons.dart';
import 'package:gudlife_/widgets/sign_up_with.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firebase = FirebaseAuth.instance;

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
      lowerBound: 0,
      upperBound: 1,
    );

    _animationController.forward();
  }

  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  var _isLogin = true;
  var _enteredEmail = '';
  var _enteredPassword = '';

  void _submit() async {
    final isValid = _formKey.currentState!.validate();

    if (!isValid) {
      return;
    }

    _formKey.currentState!.save();

    try {
      if (_isLogin) {
        final userCredentials = await _firebase.signInWithEmailAndPassword(
          email: _enteredEmail,
          password: _enteredPassword,
        );
        print('User Credentials');
        print(
          userCredentials.additionalUserInfo?.isNewUser,
        );
      } else {
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
          email: _enteredEmail,
          password: _enteredPassword,
        );
        if (userCredentials.additionalUserInfo!.isNewUser) {
          function() {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const Quiz()
              ),
            );
          }
          function();
        }
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredentials.user!.uid)
            .set({
          'username': 'to be done...',
          'email': _enteredEmail,
        });
      }
    } on FirebaseAuthException catch (error) {
      if (error.code == 'email-already-in-use') {
        // ..
      }
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error.message ?? 'Authentication Failed'),
        ),
      );
    }
  }

  // void _submit() async {
  //   final isValid = _formKey.currentState!.validate();

  //   if (!isValid) {
  //     return;
  //   }

  //   _formKey.currentState!.save();

  //   try {
  //     if (_isLogin) {
  //       final userCredentials = await _firebase.signInWithEmailAndPassword(
  //         email: _enteredEmail,
  //         password: _enteredPassword,
  //       );

  //       //AdditionalUserInfo(isNewUser: true ? )
  //     } else {
  //       final userCredentials = await _firebase.createUserWithEmailAndPassword(
  //         email: _enteredEmail,
  //         password: _enteredPassword,
  //       );
  //       //AdditionalUserInfo.isNewUser ? :
  //     }
  //   } on FirebaseAuthException catch (error) {
  //     if (error.code == 'email-already-in-use') {
  //       // ..
  //     }
  //     ScaffoldMessenger.of(context).clearSnackBars();
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(error.message ?? 'Authentication Failed'),
  //       ),
  //     );
  //   }
  // }

  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        child: Stack(
          clipBehavior: Clip.antiAlias,
          children: [
            // const Image(
            //   image: AssetImage("assets/images/greenslime.png"),
            //   fit: BoxFit.fill,
            // ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Image(
                    image: AssetImage("assets/images/gudlife_logo.png"),
                    width: 190,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        if (!_isLogin)
                          Container(
                            width: 300,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    value.trim().length < 4) {
                                  return 'Please enter atleast 4 characther';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_2_outlined),
                                label: const Text('Username'),
                                hintText: 'Enter Username',
                                hintStyle: const TextStyle(
                                  color: Color.fromARGB(255, 165, 165, 165),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(
                                        0xFFE9EC19), // Default border color
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFFE9EC19),
                                      width: 2 // Default border color
                                      ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 200, 218, 233),
                                      width: 2 // Default border color
                                      ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              enableSuggestions: false,
                              style: const TextStyle(
                                color: Colors.white,
                                height: 1,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                              onSaved: (value) {
                                _enteredEmail = value!;
                              },
                            ),
                          ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 300,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.trim().isEmpty ||
                                  !value.contains('@')) {
                                return 'Please enter a valid email address';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail_outline_outlined),
                              label: const Text('Email'),
                              hintText: 'Enter Email',
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 165, 165, 165),
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color:
                                      Color(0xFFE9EC19), // Default border color
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xFFE9EC19),
                                    width: 2 // Default border color
                                    ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 200, 218, 233),
                                    width: 2 // Default border color
                                    ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                            style: const TextStyle(
                              color: Colors.white,
                              height: 1,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                            onSaved: (value) {
                              _enteredEmail = value!;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 300,
                          child: TextFormField(
                            controller: _pass,
                            validator: (value) {
                              if (value == null || value.trim().length < 6) {
                                return 'Password must be atleast 6 characther long';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password),
                              label: const Text('Password'),
                              hintText: 'Enter Password',
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 165, 165, 165),
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color:
                                      Color(0xFFE9EC19), // Default border color
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xFFE9EC19),
                                    width: 2 // Default border color
                                    ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 200, 218, 233),
                                    width: 2 // Default border color
                                    ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            obscureText: true,
                            style: const TextStyle(
                              color: Colors.white,
                              height: 1,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                            onSaved: (value) {
                              _enteredPassword = value!;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        if (!_isLogin)
                          Container(
                            width: 300,
                            child: TextFormField(
                              controller: _confirmPass,
                              validator: (value) {
                                if (value == null || value.trim().length < 6) {
                                  return 'Password must be atleast 6 characther long';
                                }
                                if (value != _pass.text) {
                                  return 'Passwords must match';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.password),
                                label: const Text('Confirm Password'),
                                hintText: 'Re-Enter Password',
                                hintStyle: const TextStyle(
                                  color: Color.fromARGB(255, 165, 165, 165),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(
                                        0xFFE9EC19), // Default border color
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFFE9EC19),
                                      width: 2 // Default border color
                                      ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 200, 218, 233),
                                      width: 2 // Default border color
                                      ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.red,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              keyboardType: TextInputType.emailAddress,
                              obscureText: true,
                              style: const TextStyle(
                                color: Colors.white,
                                height: 1,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                              onSaved: (value) {
                                _enteredPassword = value!;
                              },
                            ),
                          ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _isLogin = !_isLogin;
                            });
                          },
                          child: Text(
                            _isLogin
                                ? 'Create an account?'
                                : 'I already have an account?',
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              pressed = !pressed;
                              Function() {
                                setState(() {
                                  pressed = !pressed;
                                });
                              }

                              var duration = Duration(milliseconds: 300);
                              Timer(duration, Function);
                            });
                            _submit();
                          },
                          child: AnimatedOpacity(
                            opacity: pressed ? 0.3 : 1,
                            duration: const Duration(milliseconds: 400),
                            child: Container(
                              width: 300,
                              height: 50,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFE9ED1A),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 1.77,
                                    color: Color(0xFFE9EC19),
                                  ),
                                  borderRadius: BorderRadius.circular(6.18),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  _isLogin ? 'Login' : 'Sign Up',
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const SignUpWith(),
                        const SignInLogos()
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        builder: (context, child) =>
            Opacity(opacity: _animationController.value * 1, child: child));
  }
}
