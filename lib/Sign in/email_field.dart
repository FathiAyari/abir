import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  // controller de champ de text
  final TextEditingController emailController;
  EmailField({
    Key? key,
    required this.emailController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.email_outlined,
            color: Colors.blueAccent,
          ),
          fillColor: Colors.white10, // filled property is required
          filled: true,
          hintText: "Email",
          hintStyle: TextStyle(color: Colors.blueAccent, fontSize: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
