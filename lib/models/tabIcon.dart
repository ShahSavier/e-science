import 'package:flutter/material.dart';

class TabIconData {
  String imagePath;
  String selctedImagePath;
  bool isSelected;
  int index;
  AnimationController animationController;

  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selctedImagePath = "",
    this.isSelected = false,
    this.animationController,
  });

  static List<TabIconData> tabIconsList = [
    TabIconData(
      imagePath: 'assets/fitness_app/tab_1.png',
      selctedImagePath: 'assets/fitness_app/tab_1s.png',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/fitness_app/question.png',
      selctedImagePath: 'assets/fitness_app/question_1.png',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/fitness_app/degree.png',
      selctedImagePath: 'assets/fitness_app/degree1.png',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/fitness_app/tab_4.png',
      selctedImagePath: 'assets/fitness_app/tab_4s.png',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}