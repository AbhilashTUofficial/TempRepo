import 'package:flutter/material.dart';
import 'package:cardsys_app_ui/export.dart';
class CardSelector extends StatefulWidget {
  @override
  _CardSelectorState createState() => _CardSelectorState();
}

class _CardSelectorState extends State<CardSelector> {

  bool _redIsChecked = false;
  bool _yellowIsChecked = false;
  bool _blueIsChecked = false;
  bool _greenIsChecked = false;
  bool invert(bool value) {
    return false;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width * 0.86,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(3),
              boxShadow: [
                BoxShadow(blurRadius: 5, color: Colors.grey[200])
              ],
            ),
            child: Checkbox(
              activeColor: Colors.green,
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
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(3),
              boxShadow: [
                BoxShadow(blurRadius: 5, color: Colors.grey[200])
              ],
            ),
            child: Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.red,
              value: _redIsChecked,
              onChanged: (bool value) {
                setState(() {
                  _redIsChecked = value;
                  _blueIsChecked = invert(value);
                  _yellowIsChecked = invert(value);
                  _greenIsChecked = invert(value);
                });
              },
            ),
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(3),
              boxShadow: [
                BoxShadow(blurRadius: 5, color: Colors.grey[200])
              ],
            ),
            child: Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.amber,
              value: _yellowIsChecked,
              onChanged: (bool value) {
                setState(() {
                  _yellowIsChecked = value;
                  _redIsChecked = invert(value);
                  _blueIsChecked = invert(value);
                  _greenIsChecked = invert(value);
                });
              },
            ),
          ),
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
            child: Checkbox(
              checkColor: Colors.white,
              value: _blueIsChecked,
              onChanged: (bool value) {
                setState(() {
                  _blueIsChecked = value;
                  _redIsChecked = invert(value);
                  _yellowIsChecked = invert(value);
                  _greenIsChecked = invert(value);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
