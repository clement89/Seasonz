import 'package:flutter/material.dart';
import '../size_config.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      color: Colors.white,
      child: _buildNotificationsList(),
    );
  }

  Widget _buildNotificationsList() {
    List<Map<String, dynamic>> items = [
      {
        'image_name': 'dummy_1.png',
        'title': 'All the Lorem Ipsum generators on the Internet.',
        'location': 'Lorem Ipsum is simply dummy text of the.',
      },
      {
        'image_name': 'dummy_1.png',
        'title': 'All the Lorem Ipsum generators on the Internet.',
        'location': 'Lorem Ipsum is simply dummy text of the.',
      },
      {
        'image_name': 'dummy_1.png',
        'title': 'All the Lorem Ipsum generators on the Internet.',
        'location': 'Lorem Ipsum is simply dummy text of the.',
      },
      {
        'image_name': 'dummy_1.png',
        'title': 'All the Lorem Ipsum generators on the Internet.',
        'location': 'Lorem Ipsum is simply dummy text of the.',
      }
    ];

    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> eachRecord = items[index];

          return _buildNotificationCell(eachRecord);
        },
      ),
    );
  }

  Widget _buildNotificationCell(Map<String, dynamic> eachRecord) {
    String imageName = eachRecord['image_name'];
    String title = eachRecord['title'];
    String location = eachRecord['location'];

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5), //border corner radius
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), //color of shadow
              spreadRadius: 1, //spread radius
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
                    width: 60.0,
                    height: 60.0,
                    decoration: new BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: new DecorationImage(
                        image: new AssetImage('images/$imageName'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(30.0)),
                      border: new Border.all(
                        color: Colors.white,
                        width: 0.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            location,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '',
                        ),
                        Text(
                          '12:05 Pm',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '21/11/2020',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
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
