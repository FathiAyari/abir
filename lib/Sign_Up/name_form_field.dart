import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NameFormField extends StatelessWidget {
  final String hint;
  final IconData prefix;
  final TextEditingController controller;
  const NameFormField(
      {Key? key,
      required this.hint,
      required this.prefix,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: Icon(
            prefix,
            color: Colors.blueAccent,
          ),
          fillColor: Colors.white10, // filled property is required
          filled: true,
          hintText: "${hint}",
          hintStyle: TextStyle(color: Colors.blueAccent, fontSize: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
    ;
  }
}
