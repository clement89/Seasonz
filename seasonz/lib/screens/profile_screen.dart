import 'package:flutter/material.dart';
import '../size_config.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    // return _buildHeader();

    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeader(),
          _buildFieldItems('Email', 'Email', ''),
          _buildFieldItems('DOB', 'Enter DOB', ''),
          _buildFieldItems('Gender', 'Select Gender', ''),
          _buildFieldItems('Country', 'Country', ''),
          _buildFieldItems('Passport Id', 'Enter Passport', ''),
        ],
      ),
    );
  }

  _buildHeader() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 20),
            child: ElevatedButton(
              child: Text('  Edit  '),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onPressed: () {
                print('Pressed');
              },
            ),
          ),
        ),
        Container(
          width: 100.0,
          height: 100.0,
          decoration: new BoxDecoration(
            color: const Color(0xff7c94b6),
            image: new DecorationImage(
              image: new AssetImage('images/dummy_1.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
            border: new Border.all(
              color: Colors.white,
              width: 0.0,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Adam John David',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '+961-9987654321',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.red,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  _buildFieldItems(String label, String hint, String value) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: TextFormField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.emailAddress,
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                      EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                  hintText: hint,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
