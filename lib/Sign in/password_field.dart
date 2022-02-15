import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          suffixIcon: Icon(Icons.visibility_off),
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.blueAccent,
          ),
          fillColor: Colors.white10, // filled property is required
          filled: true,
          hintText: "Mot de passe ",
          hintStyle: TextStyle(color: Colors.blueAccent, fontSize: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
