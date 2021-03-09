import 'package:cardsys_app_ui/export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmitScreen extends StatefulWidget {
  @override
  _SubmitScreenState createState() => _SubmitScreenState();
}

class _SubmitScreenState extends State<SubmitScreen> {
  String dropdownValue = deptList[0].dept;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Center(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(top: 30),
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.86,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: [
                      BoxShadow(blurRadius: 5, color: Colors.grey[200])
                    ],
                  ),
                  child: DropdownButton<String>(
                    // Just have to assign to a empty Container
                    underline: SizedBox.shrink(),
                    value: dropdownValue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    iconSize: 24,
                    elevation: 16,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: [
                      deptList[0].dept,
                      deptList[1].dept,
                      deptList[2].dept,
                      deptList[3].dept,
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(top: 20),
                height: 40,
                width: MediaQuery.of(context).size.width * 0.86,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3),
                  boxShadow: [
                    BoxShadow(blurRadius: 5, color: Colors.grey[200])
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: "Name or Reg number",
                      hintStyle: TextStyle(color: Colors.black54)),
                ),
              ),
              // Card select
              CardSelector(),
              Expanded(
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(top: 20,bottom: 20),
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.86,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: [
                      BoxShadow(blurRadius: 5, color: Colors.grey[200])
                    ],
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                          hintText: "Description:",
                          hintStyle: TextStyle(color: Colors.black54)),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin:
                        EdgeInsets.only(top: 5, left: 10, right: 5, bottom: 20),
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.redAccent,
                          textColor: Colors.white,
                          child: Text("Cancel"),
                          padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin:
                        EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 20),
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.grey,
                          textColor: Colors.white,
                          child: Text("Draft"),
                          padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin:
                        EdgeInsets.only(top: 5, left: 5, right: 10, bottom: 20),
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.green,
                          textColor: Colors.white,
                          child: Text("Submit"),
                          padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}
