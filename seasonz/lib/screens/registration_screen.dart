import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:seasonz/components/common_widgets.dart';
import 'package:seasonz/screens/verification_screen.dart';

import '../size_config.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          'Register',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical * 8,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: OutlinedTextField(
                controller: null,
                hintText: 'First Name *',
                inputType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 2,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: OutlinedTextField(
                controller: null,
                hintText: 'Second Name *',
                inputType: TextInputType.number,
              ),
            ),
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
                        hintText: 'Enter Your Mobile Number *',
                        inputType: TextInputType.number,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 2,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: OutlinedTextField(
                controller: null,
                hintText: 'Email *',
                inputType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 2,
            ),
            CheckboxListTile(
              title: Text(
                'I wish to receive marketing material to keep up to \n date with latest deals',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              value: checkBoxValue,
              onChanged: (newValue) {
                setState(() {
                  checkBoxValue = newValue;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
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
                    'REGISTER NOW',
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
