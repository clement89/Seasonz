import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../size_config.dart';

class PackageDetailScreen extends StatefulWidget {
  @override
  _PackageDetailScreenState createState() => _PackageDetailScreenState();
}

class _PackageDetailScreenState extends State<PackageDetailScreen> {
  List<String> _images = [];

  @override
  void initState() {
    _images
      ..add('images/dummy_1.png')
      ..add('images/dummy_2.png')
      ..add('images/dummy_3.png');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _customScrollView(),
      backgroundColor: Colors.white,
    );
  }

  Widget _customScrollView() {
    return CustomScrollView(
      // physics: BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 250.0,
          floating: false,
          pinned: true,
          backgroundColor: Colors.black.withOpacity(0.1),
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
          stretch: true,
          // stretchTriggerOffset: 150.0,
          elevation: 0,
          title: Text(
            'Detail',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite_border),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.share_sharp),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: [
              StretchMode.zoomBackground,
            ],
            background: Stack(
              children: [
                Swiper(
                  itemCount: _images.length,
                  itemBuilder: (BuildContext context, int index) => Image.asset(
                    _images[index],
                    fit: BoxFit.cover,
                  ),
                  autoplay: false,
                  pagination: new SwiperPagination(
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.zero,
                      bottomRight: Radius.zero,
                    ),
                    child: Container(
                      color: Colors.white,
                      height: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: new SliverChildListDelegate([
            Column(
              children: [
                _buildHeader(),
                _buildSubHeader(),
                SizedBox(
                  height: 5,
                ),
                _buildPackageIncludes(),
                SizedBox(
                  height: 5,
                ),
                _buildItineraryList(),
              ],
            ),
          ]),
        ),
        // SliverList(
        //   delegate: SliverChildBuilderDelegate(
        //       (context, index) => Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Container(
        //               height: 75,
        //               color: Colors.black12,
        //             ),
        //           ),
        //       childCount: 0),
        // )
      ],
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Wrap(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Chip(
                    label: Text(
                      'EMI OPTION',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.red,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Chip(
                    label: Text(
                      'EMI',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Family Special 3N Holiday Flights, Sightseeing & Transfers',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                '3N',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black38,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Munnar.',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black38,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '2N',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.black38,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Kochi.',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black38,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _buildSubHeader() {
    return Container(
      width: double.infinity,
      color: Color(0XFFf4f9f9),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Container(
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage('images/shield.png'),
                      size: 40,
                      color: Colors.blue,
                    ),
                    Text(
                      'Seasonz Secure - Safe Holiday Packages',
                      maxLines: 2,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                            size: 18.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Safe & Hygienic Stays',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                            size: 18.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Sanitized Vehicles',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                            size: 18.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Trained Staff',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: Colors.blue,
                            size: 18.0,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Safe Activities',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPackageIncludes() {
    return Container(
      width: double.infinity,
      color: Color(0XFFf4f9f9),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              child: Text(
                'Packages Includes',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              'Lorem Ipsum is simply dummy text ',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            _buildChips(),
            _buildItineraryHeader(),
          ],
        ),
      ),
    );
  }

  Widget _buildItineraryHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: Text(
        'Your Itinerary ',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildItineraryList() {
    List<Map<String, dynamic>> items = [{}, {}, {}];
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
          children: [
            _buildItinerary(),
            SizedBox(
              height: 5,
            ),
          ],
        );
      },
    );
  }

  Widget _buildItinerary() {
    List items = [
      {
        'title': 'Arrival from New Delhi to kochi',
        'subtitle': 'Lorem Ipsum is simply dummy text '
      },
      {
        'title': 'Arrival from New Delhi to kochi',
        'subtitle': 'Lorem Ipsum is simply dummy text '
      },
      {
        'title': 'Arrival from New Delhi to kochi',
        'subtitle': 'Lorem Ipsum is simply dummy text '
      },
      {
        'title': 'Arrival from New Delhi to kochi',
        'subtitle': 'Lorem Ipsum is simply dummy text '
      },
      {
        'title': 'Arrival from New Delhi to kochi',
        'subtitle': 'Lorem Ipsum is simply dummy text '
      }
    ];
    return Container(
      color: Color(0XFFf4f9f9),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Day 1- 15 Dec',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.refresh_sharp),
                  color: Colors.red,
                  splashColor: Colors.transparent,
                  onPressed: () {},
                ),
                Container(
                  height: 30,
                  width: 1,
                  color: Colors.black38,
                ),
                IconButton(
                  icon: Icon(Icons.delete_outline),
                  color: Colors.red,
                  splashColor: Colors.transparent,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            _buildImages(),
            SizedBox(
              height: 10,
            ),
            ExpansionTile(
              title: Text(
                'Details',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.deepOrange,
                ),
              ),

              // trailing: Icon(
              //   Icons.arrow_drop_down_sharp,
              //   color: Colors.deepOrange,
              // ),
              backgroundColor: Color(0XFFf4f9f9),
              children: [
                Container(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 20),
                    itemCount: items.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      Map<String, dynamic> eachItem = items[index];
                      return Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                index == 0
                                    ? SizedBox(
                                        height: 10,
                                      )
                                    : Container(
                                        width: 1,
                                        height: 10,
                                        color: Colors.black54,
                                      ),
                                Icon(
                                  Icons.circle,
                                  color: Colors.deepOrange,
                                  size: 15,
                                ),
                                index != items.length - 1
                                    ? Container(
                                        width: 1,
                                        height: 30,
                                        color: Colors.black54,
                                      )
                                    : SizedBox(
                                        height: 30,
                                      )
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  eachItem['title'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  eachItem['subtitle'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChips() {
    List<Map<String, dynamic>> items = [
      {
        'image_name': 'dummy_1.png',
        'title': 'Flights',
        'count': '2',
      },
      {
        'image_name': 'dummy_2.png',
        'title': 'Hotel',
        'count': '1',
      },
      {
        'image_name': 'dummy_2.png',
        'title': 'Cars',
        'count': '4',
      }
    ];

    return Container(
      height: 64,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> eachRecord = items[index];
          String imageName = eachRecord['image_name'];
          String title = eachRecord['title'];
          String count = eachRecord['count'];

          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
            child: Card(
              elevation: 4,
              shadowColor: Color(0XFFedeef7).withOpacity(0.5),
              child: InkWell(
                splashColor: Color(0XFFe7e6e1),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.flight_sharp,
                          color: Colors.red,
                          size: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            title,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFFedeef7),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              count,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildImages() {
    List<Map<String, dynamic>> items = [
      {
        'image_name': 'dummy_1.png',
        'title': 'Munnar Hill station',
        'info': 'Kerala',
      },
      {
        'image_name': 'dummy_2.png',
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
                borderRadius: BorderRadius.all(Radius.circular(0.0)),
                child: Stack(
                  children: [
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 45,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('images/$imageName'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: SizeConfig.blockSizeHorizontal * 45,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: new AssetImage('images/mask_image.png'),
                          fit: BoxFit.cover,
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
