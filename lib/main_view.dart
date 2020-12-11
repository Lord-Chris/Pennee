import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pennee/sizeConfig.dart';
import 'package:pennee/users.dart';

import 'explore.dart';

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentIndex = 1;
  Color kBlue = Color.fromRGBO(64, 123, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: SizeConfig.fromHeight(context, 90),
          child: currentIndex == 1 ? Explore() : Users(),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 2,
              blurRadius: 2,
            )
          ],
        ),
        height: SizeConfig.fromHeight(context, 8),
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.fromWidth(context, 10)),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () => setState(() => currentIndex = 0),
                child: SvgPicture.asset(
                  'assets/Path 74.svg',
                  color:
                      currentIndex == 0 ? kBlue : Color.fromRGBO(0, 0, 0, 0.21),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => setState(() => currentIndex = 1),
                child: SvgPicture.asset(
                  'assets/Icon material-explore.svg',
                  color:
                      currentIndex == 1 ? kBlue : Color.fromRGBO(0, 0, 0, 0.21),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => setState(() => currentIndex = 2),
                child: SvgPicture.asset(
                  'assets/Icon awesome-users.svg',
                  color:
                      currentIndex == 2 ? kBlue : Color.fromRGBO(0, 0, 0, 0.21),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => setState(() => currentIndex = 3),
                child: SvgPicture.asset(
                  'assets/Icon awesome-users (1).svg',
                  color:
                      currentIndex == 3 ? kBlue : Color.fromRGBO(0, 0, 0, 0.21),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
