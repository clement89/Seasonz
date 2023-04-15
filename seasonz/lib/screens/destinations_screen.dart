import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seasonz/screens/packages_screen.dart';

import '../size_config.dart';

class DestinationScreen extends StatefulWidget {
  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  _buildOverview(),
                  _buildDestinationsHeader(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildDestinations(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildAttractionHeader(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildAttractions(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildPackagesHeader(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildPackages(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _backgroundImage() {
    return Container(
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      child: FadeInImage(
          fit: BoxFit.cover,
          image: AssetImage('images/dummy_3.png'),
          placeholder: AssetImage('images/dummy_3.png')),
    );
  }

  void _onBackPressed() {
    Navigator.of(context).pop();
  }

  Widget _buildHeader() {
    return SizedBox(
      height: 300,
      child: Stack(
        children: <Widget>[
          this._backgroundImage(), // --> Background Image
          Positioned(
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              title: Text('Destinations'),
              centerTitle: false,
              leading: Padding(
                // --> Custom Back Button
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: this._onBackPressed,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 200,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.0, 0.5),
                    end: Alignment(0.0, 0.0),
                    colors: <Color>[
                      Color(0x60000000),
                      Color(0x00000000),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Kerala Tour pakages',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
                color: Colors.white,
              ),
              height: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOverview() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Overview',
            style: TextStyle(
              color: Colors.black,
              fontSize: SizeConfig.blockSizeVertical * 2.2,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 10, bottom: 20),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.black87,
              letterSpacing: 1,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDestinationsHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular Destination',
          style: TextStyle(
            color: Colors.black,
            fontSize: SizeConfig.blockSizeVertical * 2.2,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: new DotsIndicator(
            dotsCount: 3,
            position: 0,
            decorator: DotsDecorator(
              size: const Size.square(7.0),
              activeSize: const Size(25.0, 7.0),
              color: Colors.deepOrange,
              activeColor: Colors.deepOrange,
              spacing: EdgeInsets.all(3),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDestinations() {
    List<Map<String, dynamic>> items = [
      {
        'image_name': 'dummy_1.png',
        'title': 'Munnar Hill station',
        'location': 'Kerala',
      },
      {
        'image_name': 'dummy_2.png',
        'title': 'Traditional Temple with Boating',
        'location': 'Assam',
      }
    ];

    return Container(
      height: SizeConfig.blockSizeVertical * 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> eachRecord = items[index];
          String imageName = eachRecord['image_name'];
          String title = eachRecord['title'];
          String location = eachRecord['location'];

          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DestinationScreen(),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Stack(
                  children: [
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 48,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('images/$imageName'),
                          fit: BoxFit.fill,
                        ),
                      ), //amala
                    ),
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 48,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('images/mask_image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                color: Colors.white,
                                size: 12,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                location,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
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

  Widget _buildAttractionHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular Attraction',
          style: TextStyle(
            color: Colors.black,
            fontSize: SizeConfig.blockSizeVertical * 2.2,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: TextButton(
            onPressed: () {
              /*...*/
            },
            child: Text(
              "Show all",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAttractions() {
    List<Map<String, dynamic>> items = [
      {
        'image_name': 'dummy_3.png',
        'title': 'Munnar Hill station',
        'info': 'Kerala',
      },
      {
        'image_name': 'dummy_3.png',
        'title': 'Traditional Temple with Boating',
        'info': 'Assam',
      },
      {
        'image_name': 'dummy_3.png',
        'title': 'Traditional Temple with Boating',
        'info': 'Assam',
      },
      {
        'image_name': 'dummy_3.png',
        'title': 'Traditional Temple with Boating',
        'info': 'Assam',
      }
    ];

    return Container(
      height: SizeConfig.blockSizeVertical * 13,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> eachRecord = items[index];
          String imageName = eachRecord['image_name'];
          String title = eachRecord['title'];
          String info = eachRecord['info'];

          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => BlogsScreen(),
                //   ),
                // );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Stack(
                  children: [
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 35,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('images/$imageName'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 35,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('images/mask_image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 30,
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            info,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white,
                            ),
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

  Widget _buildPackagesHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Popular Packages',
          style: TextStyle(
            color: Colors.black,
            fontSize: SizeConfig.blockSizeVertical * 2.2,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: TextButton(
            onPressed: () {
              /*...*/
            },
            child: Text(
              "Show all",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPackages() {
    List<Map<String, dynamic>> items = [
      {
        'image_name': 'dummy_3.png',
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
      height: SizeConfig.blockSizeVertical * 20,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> eachRecord = items[index];
          String imageName = eachRecord['image_name'];
          String title = eachRecord['title'];
          String info = eachRecord['info'];

          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PackagesScreen(),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Stack(
                  children: [
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 40,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('images/$imageName'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 40,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('images/mask_image.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 16.0,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '42 Reviews',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                info,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                title,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
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
