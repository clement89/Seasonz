import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutlinedTextField extends StatelessWidget {
  const OutlinedTextField({
    Key key,
    @required this.controller,
    @required this.hintText,
    @required this.inputType,
  }) : super(key: key);

  final TextEditingController controller;
  final TextInputType inputType;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26, width: 1.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12, width: 1.0),
          ),
          hintText: hintText,
        ),
        controller: controller,
        keyboardType: inputType);
  }
}

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    Key key,
    @required this.items,
  }) : super(key: key);
  final List<String> items;

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String dropdownValue = '';

  @override
  void initState() {
    super.initState();
    dropdownValue = widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(
        Icons.arrow_drop_down_outlined,
        color: Colors.redAccent,
      ),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(
        color: Colors.black,
      ),
      underline: Container(
        height: 0,
        color: Colors.white,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      selectedItemBuilder: (BuildContext context) {
        return widget.items.map<Widget>((String item) {
          return Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Text(
                item,
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          );
        }).toList();
      },
      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
          ),
        );
      }).toList(),
    );
  }
}
