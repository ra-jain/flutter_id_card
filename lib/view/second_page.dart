import 'package:flutter/material.dart';
import 'package:id_card/view/components/third_page.dart';
import 'package:id_card/view/home.dart';
import 'package:id_card/view/components/page_container.dart';
import 'package:page_transition/page_transition.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {},
      onPanUpdate: (details) {
        if (details.delta.dx > 0) {
          Navigator.of(context).push(PageTransition(
              child: const HomePage(),
              childCurrent: this,
              type: PageTransitionType.leftToRightJoined,
              duration: const Duration(milliseconds: 550)));
        }
        if (details.delta.dx < 0) {
          Navigator.of(context).push(PageTransition(
              child: const ThirdRoute(),
              childCurrent: this,
              type: PageTransitionType.rightToLeftJoined,
              duration: const Duration(milliseconds: 550)));
        }
      },
      child: Scaffold(
        backgroundColor: togglevalue() ? Colors.black : Colors.white,
        body: DefaultTextStyle(
          style: TextStyle(color: togglevalue() ? Colors.white : Colors.black),
          child: Pagelayout(
              desc:
                  "${'"'}Kakashi is one of Konoha's most talented ninja, regularly looked to for advice and leadership despite his personal dislike of responsibility. To his students on Team 7, Kakashi emphasises the importance of teamwork; he himself received this lesson, along with the Sharingan, from his childhood friend, Obito Uchiha. After the Fourth Shinobi World War, Kakashi becomes Konoha's Sixth Hokage Kakashi was the teacher of naruto and sasuke${'"'}",
              imagename: "images/kakashi_2.jpg",
              name: "kakashi Hatake",
              nickname: "The Copy Ninja, Kakashi of the Sharingan",
              rating: "4.5"),
        ),
      ),
    );
  }
}
