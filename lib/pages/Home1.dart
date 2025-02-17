import 'package:flutter/material.dart';
import 'package:sains/pages/argumented/ar.dart';
import 'package:sains/pages/home/sainsHome.dart';
import 'package:sains/pages/kuiz/secondquiz.dart';
import 'package:sains/theme/sainsAppTheme.dart';
import 'package:sains/models/tabIcon.dart';
import 'package:sains/bottomnavigation/bottomTab.dart';

class FitnessAppHomeScreen1 extends StatefulWidget {
  @override
  _FitnessAppHomeScreen1State createState() => _FitnessAppHomeScreen1State();
}

class _FitnessAppHomeScreen1State extends State<FitnessAppHomeScreen1>
    with TickerProviderStateMixin {
  AnimationController animationController;

  double get w => MediaQuery.of(context).size.width;
  double get h => MediaQuery.of(context).size.height;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: FintnessAppTheme.background,
  );

  @override
  void initState() {
    tabIconsList.forEach((tab) {
      tab.isSelected = false;
    });
    tabIconsList[1].isSelected = true;

    animationController =
        AnimationController(duration: Duration(milliseconds: 600), vsync: this);
    tabBody = DesignCourseHomeScreen1();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FintnessAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return SizedBox();
            } else {
              return Stack(
                children: <Widget>[
                  tabBody,
                  bottomBar(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        Expanded(
          child: SizedBox(),
        ),
        //kalau hg buang expanded ni, konfirm bottomtab tu akan bertukar duduk di bahgagian header
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (index) {
            if (index == 0) {
              animationController.reverse().then((data) {
                if (!mounted) return;
                setState(() {
                  tabBody = DesignCourseHomeScreen();
                });
              });
            } else if (index == 1) {
              animationController.reverse().then((data) {
                if (!mounted) return;
                setState(() {
                  tabBody = DesignCourseHomeScreen1();
                });
              });
            } else if (index == 2) {
              animationController.reverse().then((data) {
                if (!mounted) return;
                setState(() {
                  tabBody = AR();
                });
              });
            } else if (index == 3) {
              animationController.reverse().then((data) {
                if (!mounted) return;
                setState(() {
                  tabBody = AR();
                });
              });
            }
          },
        ),
      ],
    );
  }
}
