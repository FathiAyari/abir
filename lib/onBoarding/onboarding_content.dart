import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnbaordingContent extends StatelessWidget {
  final String title;
  final String desc;
  final String image;
  OnbaordingContent(
      {Key? key, required this.title, required this.desc, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
              child: Text(
                "${title}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.orange),
              ),
            ),
            Image.asset(
              "${image}",
              height: size.height * 0.4,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.05, horizontal: size.width * 0.07),
              child: Text(
                "${desc}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
