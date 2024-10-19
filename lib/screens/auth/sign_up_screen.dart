import 'package:flutter/material.dart';
import 'package:hotel_management_app/utility/validation/validation.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  String? nameFieldError;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "SignUp",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        CustomTextField(
          textFieldName: "Name",
          controller: nameController,
          errorText: nameFieldError,
        ),
        const CustomTextField(
          textFieldName: "E-Mail",
        ),
        const CustomTextField(
          textFieldName: "Address",
        ),
        const CustomTextField(
          textFieldName: "Mobile Number",
        ),
        const CustomTextField(
          textFieldName: "Password",
        ),
        const CustomTextField(
          textFieldName: "Confirm Password",
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          btnText: "SignUp",
          onTap: () {
            setState(() {
              nameFieldError = Validation.nameValidator(
                  nameValue: nameController.text.toString());
            });
          },
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
