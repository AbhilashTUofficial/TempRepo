import 'package:flutter/material.dart';
class TopStudents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Text(
            "Top Students",
            style: TextStyle(
                letterSpacing: .8, fontSize: 16, color: Colors.grey),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5, bottom: 10),
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(3),
            boxShadow: [
              BoxShadow(blurRadius: 5, color: Colors.grey[200])
            ],
          ),
        ),
      ],
    );
  }
}
