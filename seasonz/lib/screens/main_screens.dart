import 'package:flutter/material.dart';
import 'package:seasonz/components/custom_bottom_bar.dart';
import 'package:seasonz/screens/home_screen.dart';
import 'package:seasonz/screens/notifications_screen.dart';
import 'package:seasonz/screens/profile_screen.dart';
import '../size_config.dart';

class MainScreens extends StatefulWidget {
  static const String id = 'main_screens';

  @override
  _MainScreensState createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  @override
  void initState() {
    super.initState();
    print('HOME....');
  }

  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    NotificationsScreen(),
    HomeScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: _buildAppBar(),
      body: Center(
        child: _widgetOptions.elementAt(
          _selectedIndex,
        ),
      ),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: '',
        color: Colors.grey,
        backgroundColor: Color(0XFFf4f9f9),
        selectedColor: Colors.red,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _onTapped,
        items: [
          FABBottomAppBarItem(iconData: Icons.home, text: ''),
          FABBottomAppBarItem(iconData: Icons.notifications, text: ''),
          FABBottomAppBarItem(iconData: Icons.turned_in_outlined, text: ''),
          FABBottomAppBarItem(iconData: Icons.person, text: ''),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: ImageIcon(
          AssetImage("images/send_icon.png"),
          color: Colors.red,
        ),
        elevation: 0.0,
        backgroundColor: Color(0XFFf4f9f9),
      ),
    );
  }

  _onTapped(int index) {
    print('tapped _ $index');
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildAppBar() {
    switch (_selectedIndex) {
      case 0:
        return _buildHomeAppBar();
        break;
      case 1:
        return _buildOtherAppBar('Notifications');
        break;
      case 2:
        return _buildHomeAppBar();
        break;
      case 3:
        return _buildOtherAppBar('Profile');
        break;
    }
  }

  Widget _buildHomeAppBar() {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      title: Image.asset(
        'images/seasonz_logo.png',
        fit: BoxFit.cover,
        height: 35,
      ),
      centerTitle: true,
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
      actions: [
        GestureDetector(
          onTap: () {
            print('menu clicked...');
          },
          child: Image.asset(
            'images/person_dummy.png',
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    );
  }

  Widget _buildOtherAppBar(String title) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.red,
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
}
