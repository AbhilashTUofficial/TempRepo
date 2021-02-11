import 'package:flutter/material.dart';
import 'package:ncas_app_ui/Screens/UpdatePage/Widgets/recentTile.dart';
import 'package:ncas_app_ui/Screens/UpdatePage/Widgets/topStudentsTile.dart';
import 'package:ncas_app_ui/model/recent.dart';

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
          RecentTile()
        ],
      ),
    );
  }
}
