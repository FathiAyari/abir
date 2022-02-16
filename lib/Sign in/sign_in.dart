import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hire_lawyer/Sign%20in/password_field.dart';
import 'package:hire_lawyer/Sign_Up/sign_up.dart';

import '../reset_password.dart';
import 'action_button.dart';
import 'email_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var resultSeen = GetStorage().read("seen");
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white24,
                  Colors.blueGrey,
                ],
              ),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.asset("assets/img.png"),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.01,
                          horizontal: size.width * 0.12),
                      child: EmailField(
                        emailController: email,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.01,
                          horizontal: size.width * 0.12),
                      child: PasswordField(
                        passwordController: passwordController,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: size.width * 0.1, bottom: size.width * 0.08),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => ResetPasssword());
                          },
                          child: Text("Mot de passe oublié ?",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blueAccent,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                      ),
                    ),
                    ActionButton(
                      label: 'Connexion',
                      press: () {},
                    ),
                    SizedBox(
                      height: size.width * 0.4,
                    ),
                    Container(
                      // souligné
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        color: Colors.white, // Text colour here
                        width: 1.0, // Underline width
                      ))),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => SignUp());
                        },
                        child: Text(
                          "Créer un compte ",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
