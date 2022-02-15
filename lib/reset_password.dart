import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:hire_lawyer/Sign%20in/sign_in.dart';

import 'Sign in/action_button.dart';
import 'Sign in/email_field.dart';

class ResetPasssword extends StatelessWidget {
  ResetPasssword({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController();
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
                        "Mot de passe oubliée",
                        style: TextStyle(
                            fontSize: size.height * 0.028,
                            fontFamily: "NewsCycle-Bold"),
                        textAlign: TextAlign.center,
                      )
                    ],
                  )),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.1, horizontal: size.width * 0.1),
                child: Container(
                  child: Text(
                    "Entrer votre E-mail et vous recevrez un e-mail de récupération",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: size.height * 0.025,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: EmailField(
                  emailController: email,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.1),
                child: Container(
                    width: size.width * 0.8,
                    child: ActionButton(
                      label: 'Recuperer',
                      press: () {
                        Get.snackbar(
                          "verifier votre boite mail",
                          "Un mail de confirmation a été envoyé",
                          animationDuration: Duration(seconds: 2),
                          icon: Icon(Icons.mail, color: Colors.white),
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      },
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
