import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seasonz/components/common_widgets.dart';
import 'package:seasonz/screens/package_detail_screen.dart';

import '../size_config.dart';

class PackagesScreen extends StatefulWidget {
  @override
  _PackagesScreenState createState() => _PackagesScreenState();
}

class _PackagesScreenState extends State<PackagesScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            _buildPackages(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      title: Text(
        'Packages',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.red,
          fontSize: 20,
        ),
      ),
      centerTitle: false,
      elevation: 1.0,
      automaticallyImplyLeading: false,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
          size: 16.0,
        ),
      ),
    );
  }

  Widget _buildHeader() {
    double fontSize = 13;

    return Container(
      margin: const EdgeInsets.all(30.0),
      padding: const EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12, //                   <--- border color
          width: 1.0,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SHOW ME  ',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  CustomDropDown(
                    items: ['EVERYTHING', 'Two', 'Free', 'Four'],
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.black12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ABOUT  ',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                CustomDropDown(
                  items: ['KOCHI', 'Two', 'Free', 'Four'],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'IN  ',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                CustomDropDown(
                  items: ['PACKAGES', 'Two', 'Free', 'Four'],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPackages() {
    List<Map<String, dynamic>> items = [
      {
        'image_name': 'dummy_1.png',
        'title': '7 Days 6 Nights',
        'info': 'Kerala Tour Packages from Mumbai ',
      },
      {
        'image_name': 'dummy_2.png',
        'title': '7 Days 6 Nights',
        'info': 'Kerala Tour Packages from Mumbai ',
      },
      {
        'image_name': 'dummy_3.png',
        'title': '7 Days 6 Nights',
        'info': 'Kerala Tour Packages from Mumbai ',
      }
    ];

    return Container(
      height: SizeConfig.blockSizeVertical * 80,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> eachRecord = items[index];
          String imageName = eachRecord['image_name'];
          String title = eachRecord['title'];
          String info = eachRecord['info'];

          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => PackagesScreen(),
                //   ),
                // );
              },
              child: Container(
                height: SizeConfig.blockSizeVertical * 55,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero,
                        ),
                        child: Stack(
                          children: [
                            Container(
                              height: SizeConfig.blockSizeVertical * 30,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                  image: new AssetImage('images/$imageName'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              height: SizeConfig.blockSizeVertical * 30,
                              decoration: new BoxDecoration(
                                image: new DecorationImage(
                                  image:
                                      new AssetImage('images/mask_image.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 0,
                      child: Stack(
                        children: [
                          Container(
                            height: 70,
                            width: 150,
                            decoration: new BoxDecoration(
                              image: new DecorationImage(
                                image: new AssetImage('images/offer_icon.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 10,
                            right: 20,
                            child: Column(
                              children: [
                                Text(
                                  'Covid Care',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Packages',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 15,
                      child: Container(
                        color: Colors.lightBlue,
                        child: Container(
                          height: SizeConfig.blockSizeVertical * 25,
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26, //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 4, // blur radius
                                offset:
                                    Offset(3, 3), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                info,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Row(
                                  children: [
                                    Text(
                                      '5/5',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 24.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 24.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 24.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 24.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 24.0,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '42 Reviews',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Paces to visit : ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text(
                                    'Munnar 2 nights ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    '3 Days 2 Nights',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.red,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Customizable',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: SizeConfig.blockSizeHorizontal * 45,
                                    child: OutlinedButton(
                                      child: new Text(
                                        'DETAILS',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: Colors.red,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PackageDetailScreen(),
                                          ),
                                        );
                                      },
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        side: BorderSide(
                                            width: 1, color: Colors.red),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: SizeConfig.blockSizeHorizontal * 45,
                                    child: OutlinedButton(
                                      child: new Text(
                                        'BOOK NOW',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                      onPressed: null,
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        side: BorderSide(
                                            width: 1, color: Colors.red),
                                        backgroundColor: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
