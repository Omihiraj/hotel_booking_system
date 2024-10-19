import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "SignIn",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 28,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        CustomTextField(
          textFieldName: "E-Mail",
        ),
        CustomTextField(
          textFieldName: "Password",
        ),
        SizedBox(
          height: 30,
        ),
        CustomButton(
          btnText: "SignIn",
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
