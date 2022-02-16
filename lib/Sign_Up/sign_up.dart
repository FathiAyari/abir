import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hire_lawyer/Sign%20in/action_button.dart';
import 'package:hire_lawyer/Sign%20in/email_field.dart';
import 'package:hire_lawyer/Sign%20in/password_field.dart';
import 'package:hire_lawyer/Sign%20in/sign_in.dart';
import 'package:hire_lawyer/Sign_Up/name_form_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
              Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.to(() => SignIn());
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      SizedBox(
                        width: size.width * 0.15,
                      ),
                      Text(
                        "Créer un compte",
                        style: TextStyle(
                            fontSize: size.height * 0.028,
                            fontFamily: "NewsCycle-Bold"),
                        textAlign: TextAlign.center,
                      )
                    ],
                  )),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: size.height * 0.04),
                child: ListView(
                  children: [
                    Image.asset(
                      "assets/avatar.png",
                      height: size.height * 0.2,
                    ),
                    SizedBox(
                      height: size.height * 0.06,
                    ),
                    NameFormField(
                        hint: "Nom",
                        prefix: Icons.account_circle_sharp,
                        controller: nameController),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    NameFormField(
                        hint: "Prénom",
                        prefix: Icons.account_circle_outlined,
                        controller: lastnameController),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    EmailField(
                      emailController: emailController,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    PasswordField(
                      passwordController: passwordController,
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    ActionButton(
                      press: () {},
                      label: "S'inscrire",
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
