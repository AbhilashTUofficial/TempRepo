import 'package:cardsys_app_ui/export.dart';
import 'package:flutter/material.dart';

class SubmitScreen extends StatefulWidget {
  @override
  _SubmitScreenState createState() => _SubmitScreenState();
}

class _SubmitScreenState extends State<SubmitScreen> {
  String dropdownValue = deptList[0].dept;
  bool _redIsChecked = false;
  bool _yellowIsChecked = false;
  bool _blueIsChecked = true;
  bool _greenIsChecked = false;

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
                  )),
              // Card select
              Container(
                margin: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width * 0.86,
                child: Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(3),
                        boxShadow: [
                          BoxShadow(blurRadius: 5, color: Colors.grey[200])
                        ],
                      ),
                      child:Checkbox(
                        checkColor: Colors.white,
                        value: _greenIsChecked,
                        onChanged: (bool value) {
                          setState(() {
                            _greenIsChecked = value;
                            _redIsChecked = invert(value);
                            _yellowIsChecked = invert(value);
                            _blueIsChecked = invert(value);
                          });
                        },
                        

                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool invert(bool value) {
    if(value){
      return false;
    }else if(!value){
      return true;
    }
    return null;
  }
}
