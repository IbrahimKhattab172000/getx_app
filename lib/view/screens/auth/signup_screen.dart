// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../utils/theme.dart';
import '../../widgets/auth_text_form_field.dart';
import '../../widgets/text_utils.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.3,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 40,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextUtils(
                          text: "SIGN",
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: mainColor,
                        ),
                        SizedBox(width: 6),
                        TextUtils(
                          text: "UP",
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    AuthTextFormField(
                      controller: nameController,
                      obscureText: false,
                      validator: () {},
                      prefixIcon: Image.asset("assets/images/user.png"),
                      haveSuffix: false,
                      hintText: "User name",
                    ),
                    SizedBox(height: 20),
                    AuthTextFormField(
                      controller: emailController,
                      obscureText: false,
                      validator: () {},
                      prefixIcon: Image.asset("assets/images/email.png"),
                      haveSuffix: false,
                      hintText: "Email",
                    ),
                    SizedBox(height: 20),
                    AuthTextFormField(
                      controller: passwordController,
                      obscureText: true,
                      validator: () {},
                      prefixIcon: Image.asset("assets/images/lock.png"),
                      haveSuffix: false,
                      hintText: "Password",
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
