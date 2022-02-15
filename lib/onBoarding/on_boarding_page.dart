import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hire_lawyer/Sign%20in/sign_in.dart';

import 'onboarding_content.dart';
import 'onboarding_controller.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  _OnBoardingBodyState createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController _controller = PageController();
  var OnBoardingController = onBoardingController();
  int currentIndex = 0;
  List<OnbaordingContent> pages = [
    OnbaordingContent(
      title: "Bienvenue ",
      desc:
          'Votre guide pour trouver les meilleurs avocats en Tunisie dans tous les domaines juridique',
      image: 'assets/judge.png',
    ),
    OnbaordingContent(
      title: 'êtes-vous fatigué de chercher un avocat qualifié ?',
      desc: 'Hire lawyer est la meilleur solution \n pour vous 7/7 24/24',
      image: 'assets/answer.png',
    ),
    OnbaordingContent(
      title: " ",
      desc:
          'A partir de maintenant discuter avec votre avocat personelle en ligne ',
      image: 'assets/texting.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
                controller: _controller,
                itemCount: pages.length,
                onPageChanged: (changes) {
                  setState(() {
                    currentIndex = changes;
                  });
                },
                itemBuilder: (context, index) {
                  return pages[index];
                }),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(pages.length, (int index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(
                          horizontal: 5, vertical: size.height * 0.04),
                      height: size.height * 0.01,
                      width: (index == currentIndex) ? 25 : 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (index == currentIndex)
                              ? Colors.blue
                              : Colors.blue.withOpacity(0.5)),
                    );
                  }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 30),
                      child: GestureDetector(
                        child: Text("Ignorer",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueAccent)),
                        onTap: () {
                          OnBoardingController.check();
                          Get.to(() => SignIn());
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: currentIndex == pages.length - 1
                          ? () {
                              Get.to(() => SignIn());
                            }
                          : () {
                              OnBoardingController.check();
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeInOutQuint);
                            },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(15)),
                          child: currentIndex == pages.length - 1
                              ? Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 10),
                                  child: Text(
                                    "Commencer",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 20),
                                  child: Text(
                                    "Suivant",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                )),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
