import 'package:cardsys_app_ui/export.dart';
import 'package:flutter/material.dart';

class UpdateScreen extends StatefulWidget {
  @override
  _UpdateScreenState createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Column(
        children: [
          TopStudents(),
          Expanded(
            child: ListView.builder(
              itemCount: recentList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: [
                      BoxShadow(blurRadius: 5, color: Colors.grey[200])
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(left: 5),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundImage:
                                  AssetImage("assets/img/logo.png"),
                            ),
                            Positioned(
                              top: 40,
                              left: 40,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.amberAccent,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5, left: 5),
                        height: 80,
                        width: MediaQuery.of(context).size.width - 125,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(blurRadius: 2, color: Colors.grey[100])
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20, left: 10),
                                  child: Text(
                                    recentList[index].name,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 6, left: 10),
                                  child: Text(
                                    recentList[index].department,
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.arrow_drop_down_sharp,
                                size: 30,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
