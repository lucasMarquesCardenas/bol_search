import 'package:flutter/material.dart';
import 'package:dropdownfield/dropdownfield.dart';

class DropDownSelect extends StatefulWidget {
  DropDownSelect();
  @override
  _DropDownSelectState createState() => _DropDownSelectState();
}

class _DropDownSelectState extends State<DropDownSelect> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String country_id;
  List<String> country = [
    "America",
    "Brazil",
    "Canada",
    "India",
    "Mongalia",
    "USA",
    "China",
    "Russia",
    "Germany"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Form"),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DropDownField(
              onValueChanged: (dynamic value) {
                country_id = value;
              },
              value: country_id,
              required: false,
              hintText: 'Choose a country',
              labelText: 'Country',
              items: country,
            ),
          ],
        ),
      ),
    );
  }
}
