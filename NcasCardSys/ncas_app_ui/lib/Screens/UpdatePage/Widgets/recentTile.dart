import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ncas_app_ui/model/recent.dart';

class RecentTile extends StatefulWidget {
  @override
  _RecentTileState createState() => _RecentTileState();
  int index;
  RecentTile(this.index);
}

class _RecentTileState extends State<RecentTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
        boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey[200])],
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 5),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(3),
            ),
            child: CircleAvatar(
              radius: 30,
             // backgroundImage: recentList[widget.index].imgUrl,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5, left: 5),
            height: 90,
            width: MediaQuery.of(context).size.width - 125,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3),
              boxShadow: [
                BoxShadow(blurRadius: 2, color: Colors.grey[100])
              ],
            ),
          ),
        ],
      ),
    );

  }
}
