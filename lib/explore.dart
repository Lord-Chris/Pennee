import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pennee/sizeConfig.dart';

class Explore extends StatelessWidget {
  Color kBlue = Color.fromRGBO(64, 123, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: SizeConfig.fromHeight(context, 3)),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bookee Main',
                      style: TextStyle(
                        fontSize: SizeConfig.fontSize(context, 5),
                        color: Color.fromRGBO(122, 121, 145, 1),
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/Icon material-history.svg',
                      color: kBlue,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Explore',
                  style: TextStyle(
                    fontSize: SizeConfig.fontSize(context, 10),
                    color: Color.fromRGBO(36, 33, 76, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'books',
                  style: TextStyle(
                    fontSize: SizeConfig.fontSize(context, 10),
                    color: Color.fromRGBO(36, 33, 76, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.fromHeight(context, 3)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(15),
                        elevation: 5.0,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Image.asset(
                      'assets/Group 3352.png',
                      height: 55,
                    ),
                  ),
                ],
              ),
              Container(
                height: SizeConfig.fromHeight(context, 17),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.fromHeight(context, 3),
                        left: 15.0,
                        right: SizeConfig.fromWidth(context, 3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular Books',
                            style: TextStyle(
                              fontSize: SizeConfig.fontSize(context, 4.5),
                              color: Color.fromRGBO(122, 121, 145, 1),
                            ),
                          ),
                          Text(
                            'Science',
                            style: TextStyle(
                              fontSize: SizeConfig.fontSize(context, 3),
                              color: Color.fromRGBO(122, 121, 145, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildMovie(context, 'assets/Mask Group 184.png',
                              'Children of Ruin', 'Adrian Tchaikovsky'),
                          _buildMovie(context, 'assets/Mask Group 185.png',
                              'Life of Pi', 'Yann Martel'),
                          _buildMovie(context, 'assets/Mask Group 184.png',
                              'Children of Ruin', 'Adrian Tchaikovsky'),
                          _buildMovie(context, 'assets/Mask Group 184.png',
                              'Children of Ruin', 'Adrian Tchaikovsky'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: SizeConfig.fromHeight(context, 14),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.fromHeight(context, 3),
                        left: 15.0,
                        right: SizeConfig.fromWidth(context, 3),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Books for you',
                            style: TextStyle(
                              fontSize: SizeConfig.fontSize(context, 4.5),
                              color: Color.fromRGBO(122, 121, 145, 1),
                            ),
                          ),
                          Text(
                            'See all',
                            style: TextStyle(
                              fontSize: SizeConfig.fontSize(context, 3),
                              color: Color.fromRGBO(122, 121, 145, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildCategory(
                            context,
                            'assets/Icon awesome-fonticons-fi.svg',
                            'Fiction',
                          ),
                          _buildCategory(
                              context,
                              'assets/Icon ionic-md-planet.svg',
                              'Science',
                              kBlue),
                          _buildCategory(
                            context,
                            'assets/Icon awesome-fighter-jet.svg',
                            'Action & Adventure',
                            Color.fromRGBO(241, 126, 123, 1),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              _buildMovie(context, 'assets/Mask Group 184.png',
                  'Where the Crawdads Sing', 'Delia Owens'),
              _buildMovie(context, 'assets/Mask Group 187.png',
                  'Where the Crawdads Sing', 'Delia Owens'),
              _buildMovie(context, 'assets/Mask Group 184.png',
                  'Where the Crawdads Sing', 'Delia Owens'),
              _buildMovie(context, 'assets/Mask Group 184.png',
                  'Where the Crawdads Sing', 'Delia Owens'),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 10,
            child: Container(
              height: SizeConfig.fromHeight(context, 20),
              width: SizeConfig.fromWidth(context, 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/Navigation-pana.png',
                      height: SizeConfig.fromHeight(context, 15),
                    ),
                    Text(
                      'Bookee Map',
                      style: TextStyle(
                        fontSize: SizeConfig.fontSize(context, 4),
                        color: kBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Card _buildCategory(BuildContext context, String image, String title,
      [Color color]) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: SizeConfig.fromHeight(context, 1),
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          children: [
            SvgPicture.asset(
              image,
              color: color ?? Colors.black,
            ),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: SizeConfig.fontSize(context, 4),
                color: Color.fromRGBO(122, 121, 145, 1),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card _buildMovie(
      BuildContext context, String image, String title, String author) {
    return Card(
      // margin: EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: SizeConfig.fromHeight(context, 8),
        margin: EdgeInsets.all(15),
        child: Row(
          children: [
            Image.asset(image),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: SizeConfig.fontSize(context, 4),
                    color: Color.fromRGBO(122, 121, 145, 1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  author,
                  style: TextStyle(
                    fontSize: SizeConfig.fontSize(context, 3.5),
                    color: Color.fromRGBO(122, 121, 145, 1),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
