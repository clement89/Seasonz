import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:seasonz/components/common_widgets.dart';
import 'package:seasonz/screens/blogs_screen.dart';
import 'package:seasonz/screens/destinations_screen.dart';
import 'package:seasonz/screens/stories_screen.dart';
import '../size_config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderTitles(),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            _buildFilters(),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 1,
            ),
            _buildDestinations(),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            _buildEntertainments(),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            _buildStoriesHeader(),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            _buildStories(),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            _buildBlogsHeader(),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            _buildBlogs(),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderTitles() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Let\'s Make Your Best',
          style: TextStyle(
            color: Colors.black87,
            fontSize: SizeConfig.blockSizeVertical * 3.5,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 1,
        ),
        Text(
          'Trip Ever !',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: SizeConfig.blockSizeVertical * 3.5,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget _buildFilters() {
    double fontSize = 13;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
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
          SizedBox(
            width: 10,
          ),
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

  Widget _buildEntertainments() {
    List<Map<String, dynamic>> items = [
      {
        'image_name': 'icon_boating.png',
        'title': 'Boating',
      },
      {
        'image_name': 'icon_baloon.png',
        'title': 'Ballooning',
      },
      {
        'image_name': 'icon_hike.png',
        'title': 'Hiking',
      }
    ];
    return Column(
      children: [
        _buildEntertainmentsHeader(),
        Container(
          height: SizeConfig.blockSizeVertical * 10,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> eachRecord = items[index];
              String imageName = eachRecord['image_name'];
              String title = eachRecord['title'];

              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Column(
                  children: [
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 10,
                      height: SizeConfig.blockSizeHorizontal * 10,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('images/$imageName'),
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildEntertainmentsHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Entertainments',
          style: TextStyle(
            color: Colors.black,
            fontSize: SizeConfig.blockSizeVertical * 2.5,
            fontWeight: FontWeight.w700,
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

  Widget _buildStoriesHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Travellers Stories',
          style: TextStyle(
            color: Colors.black,
            fontSize: SizeConfig.blockSizeVertical * 2.5,
            fontWeight: FontWeight.w700,
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

  Widget _buildStories() {
    List<Map<String, dynamic>> items = [
      {
        'image_name': 'dummy_1.png',
        'title': 'WanderHawk',
        'location': 'Kochi',
      },
      {
        'image_name': 'dummy_1.png',
        'title': 'WanderHawk',
        'location': 'Kochi',
      },
      {
        'image_name': 'dummy_1.png',
        'title': 'WanderHawk',
        'location': 'Kochi',
      }
    ];

    return Container(
      height: SizeConfig.blockSizeHorizontal * 103,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> eachRecord = items[index];

          return _buildStoriesTile(eachRecord);
        },
      ),
    );
  }

  Widget _buildStoriesTile(Map<String, dynamic> eachRecord) {
    String imageName = eachRecord['image_name'];
    String title = eachRecord['title'];
    String location = eachRecord['location'];

    return Padding(
      padding: const EdgeInsets.only(right: 20, bottom: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StoriesScreen(),
            ),
          );
        },
        child: Container(
          height: SizeConfig.blockSizeHorizontal * 100,
          width: SizeConfig.blockSizeHorizontal * 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5), //border corner radius
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), //color of shadow
                spreadRadius: 2, //spread radius
                blurRadius: 4, // blur radius
                offset: Offset(3, 3), // changes position of shadow
                //first paramerter of offset is left-right
                //second parameter is top to down
              ),
              //you can set more BoxShadow() here
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: new BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: new DecorationImage(
                          image: new AssetImage('images/$imageName'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                        border: new Border.all(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          location,
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: new Image.asset(
                  'images/dummy_3.png',
                  fit: BoxFit.cover,
                  width: SizeConfig.blockSizeHorizontal * 80,
                  height: SizeConfig.blockSizeHorizontal * 45,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.chat_bubble_outline_rounded),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.send_outlined),
                    onPressed: () {},
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.turned_in_not_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '3,065 likes',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'WanderHawk Best Trip Ever in life.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'View all 30 Comments',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: new BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: new DecorationImage(
                          image: new AssetImage('images/$imageName'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                        border: new Border.all(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'View all 30 Comments',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBlogsHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Our Blogs',
          style: TextStyle(
            color: Colors.black,
            fontSize: SizeConfig.blockSizeVertical * 2.5,
            fontWeight: FontWeight.w700,
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

  Widget _buildBlogs() {
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
      }
    ];

    return Container(
      height: SizeConfig.blockSizeVertical * 25,
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
                    builder: (context) => BlogsScreen(),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                child: Stack(
                  children: [
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 48,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('images/$imageName'),
                          fit: BoxFit.cover,
                        ),
                      ),
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
                      right: 15,
                      top: 15,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius:
                              BorderRadius.circular(20), //border corner radius
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 15),
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
                    Positioned(
                      left: 15,
                      bottom: 15,
                      child: Text(
                        info,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
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
