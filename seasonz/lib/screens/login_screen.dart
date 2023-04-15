import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:seasonz/components/common_widgets.dart';
import 'package:seasonz/screens/home_screen.dart';
import 'package:seasonz/screens/main_screens.dart';
import 'package:seasonz/screens/registration_screen.dart';
import 'package:seasonz/screens/verification_screen.dart';

import '../size_config.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage imageFile = AssetImage('images/seasonz_logo.png');

    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical * 15,
            ),
            Image(image: imageFile),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 2,
            ),
            Row(
              children: [
                SizedBox(
                  width: 110,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: OutlinedTextField(
                      controller: null,
                      hintText: '+981',
                      inputType: TextInputType.number,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: OutlinedTextField(
                        controller: null,
                        hintText: 'Enter Your Mobile Number',
                        inputType: TextInputType.number,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 2,
            ),
            SizedBox(
              width: (SizeConfig.blockSizeHorizontal * 100) - 40,
              child: OutlinedButton(
                onPressed: () {
                  print('Received click');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerificationScreen(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  side: BorderSide(width: 1.2, color: Colors.redAccent),
                  elevation: 12,
                  shadowColor: Colors.blue[50],
                  primary: Colors.blue[200],
                  backgroundColor: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Text(
                    'Login Via OTP',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: SizeConfig.blockSizeVertical * 2.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 5,
            ),
            _terms(context),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 5,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: 1,
                color: Colors.black12,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            Text(
              'No Account ? Register Here',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 1,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal * 43,
                    child: OutlinedButton(
                      onPressed: () {
                        print('Received click');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegistrationScreen(),
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        side: BorderSide(width: 0.8, color: Colors.blue),
                        elevation: 8,
                        shadowColor: Colors.blueGrey[50],
                        primary: Colors.blue[200],
                        backgroundColor: Colors.blue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 0),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal * 43,
                    child: OutlinedButton(
                      onPressed: () {
                        print('Received click');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreens(),
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        side: BorderSide(width: 0.8, color: Colors.redAccent),
                        elevation: 8,
                        shadowColor: Colors.blueGrey[50],
                        primary: Colors.blue[200],
                        backgroundColor: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 0),
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'Continue as Guest',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 1,
            ),
            Text(
              'Login Via Social Account',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _terms(BuildContext context) {
    TextStyle defaultStyle = TextStyle(
      color: Colors.black54,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
    TextStyle linkStyle = TextStyle(
      color: Colors.black54,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      decoration: TextDecoration.underline,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          text: TextSpan(
            style: defaultStyle,
            children: <TextSpan>[
              TextSpan(text: 'By clicking above, I agree to the '),
              TextSpan(
                  text: 'Terms of Use ',
                  style: linkStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('Terms of Service');
                    }),
              TextSpan(text: ' and \n'),
              TextSpan(
                  text: 'Privacy Statement.',
                  style: linkStyle,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      print('Privacy Policy');
                    }),
            ],
          ),
        ),
      ),
    );
  }
}
