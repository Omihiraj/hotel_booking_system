import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_app/screens/auth/sign_in_screen.dart';
import 'package:hotel_management_app/screens/auth/sign_up_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isSignInPage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isSignInPage ? const SignInScreen() : const SignUpScreen(),
              isSignInPage
                  ? RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: "Don't have an account  ",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                              text: "SignUp",
                              style: const TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  setState(() {
                                    isSignInPage = false;
                                  });
                                }),
                        ],
                      ),
                    )
                  : RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          const TextSpan(
                            text: "Already have an account  ",
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                              text: "SignIn",
                              style: const TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  setState(() {
                                    isSignInPage = true;
                                  });
                                }),
                        ],
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
