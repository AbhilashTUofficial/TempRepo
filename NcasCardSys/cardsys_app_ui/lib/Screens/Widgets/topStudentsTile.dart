import 'package:cardsys_app_ui/export.dart';
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
            style:
                TextStyle(letterSpacing: .8, fontSize: 16, color: Colors.grey),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          margin: EdgeInsets.only(top: 5, bottom: 10),
          width: MediaQuery.of(context).size.width,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(3),
            boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey[200])],
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: topStudentList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 36,
                          backgroundImage:
                          AssetImage(topStudentList[index].imgUrl),
                        ),
                        Positioned(
                          top: 45,
                          left: 50,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: topStudentList[index].cardColor,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(topStudentList[index].name)
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
