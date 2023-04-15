import 'package:flutter/material.dart';
import '../size_config.dart';

class StoriesScreen extends StatefulWidget {
  @override
  _StoriesScreenState createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildStories(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      title: Text(
        'Travellers Stories',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      centerTitle: false,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      leading: GestureDetector(
        onTap: () {
          print('menu clicked...');
        },
        child: Image.asset(
          'images/menu_icon.png',
          fit: BoxFit.scaleDown,
        ),
      ),
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
      child: ListView.builder(
        scrollDirection: Axis.vertical,
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
      padding: const EdgeInsets.only(bottom: 20),
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
              color: Colors.red,
              child: new Image.asset(
                'images/dummy_3.png',
                fit: BoxFit.fitWidth,
                width: SizeConfig.blockSizeHorizontal * 100,
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
    );
  }
}
