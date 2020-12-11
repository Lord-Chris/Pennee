import 'package:flutter/material.dart';
import 'package:pennee/sizeConfig.dart';

class Users extends StatelessWidget {
  Color kBlue = Color.fromRGBO(64, 123, 255, 1);
  ScrollController _controller = ScrollController();

  List<Challenge> chal = [
    Challenge(name: 'Daily', isComplete: true),
    Challenge(name: 'Weekly', isComplete: true),
    Challenge(name: '2 Weeks', score: 20),
    Challenge(name: 'Monthly', score: 30),
    Challenge(name: 'Yearly'),
    Challenge(name: 'Yearly'),
    Challenge(name: 'Yearly'),
    Challenge(name: 'Yearly'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.chevron_left),
                color: kBlue,
                iconSize: 40,
                onPressed: () {},
              ),
            ],
          ),
          Center(
            child: Text(
              'Bookee Challenge',
              style: TextStyle(
                fontSize: SizeConfig.fontSize(context, 8),
                color: Color.fromRGBO(36, 33, 76, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: _controller,
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (__, index) {
                Challenge chall = chal[index];
                return Container(
                  child: Stack(
                    children: [
                      Card(
                        margin: EdgeInsets.fromLTRB(
                            SizeConfig.fromWidth(context, 10), 8, 8, 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          height: SizeConfig.fromHeight(context, 13.5),
                          padding: EdgeInsets.fromLTRB(
                            SizeConfig.fromWidth(context, 20),
                            SizeConfig.fromHeight(context, 4),
                            SizeConfig.fromWidth(context, 7),
                            SizeConfig.fromHeight(context, 4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(),
                                  Text(
                                    chall.title,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: SizeConfig.fontSize(context, 4),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    chall.isComplete ? 'Completed' : 'Ongoing',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize:
                                          SizeConfig.fontSize(context, 3.3),
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                  Container(),
                                ],
                              ),
                              chall.isComplete
                                  ? Image.asset('assets/Group 3353.png')
                                  : Container(
                                      width: SizeConfig.fromWidth(context, 25),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              '${chall.score}%',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: SizeConfig.fontSize(
                                                    context, 3.3),
                                                color: Colors.grey[800],
                                              ),
                                            ),
                                          ),
                                          LinearProgressIndicator(
                                            value: chall.score / 100,
                                            backgroundColor: Colors.grey[300],
                                          ),
                                        ],
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Card(
                          margin: EdgeInsets.only(
                              top: SizeConfig.fromHeight(context, 1.5),
                              left: SizeConfig.fromWidth(context, 3)),
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            padding:
                                EdgeInsets.all(SizeConfig.fontSize(context, 6)),
                            height: SizeConfig.fromHeight(context, 12),
                            width: SizeConfig.fromWidth(context, 23),
                            child: Image.asset('assets/Icon feather-award.png'),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class Challenge {
  final String name;
  final bool isComplete;
  final int score;

  Challenge({this.name, this.isComplete = false, this.score = 0});

  String get title => '$name Challenge';
}
