import 'package:flutter/material.dart';

class TopStudent {
  String name;
  String imgUrl;
  String dept;
  String course;
  String date;
  Color cardColor;
  String description;
  String awardedBy;
  String regNumber;

  TopStudent({this.name, this.imgUrl, this.dept, this.course, this.date,
      this.cardColor, this.description, this.awardedBy, this.regNumber});
}
List<TopStudent>topStudentList=[
  TopStudent(
    name:"Student 1",
    imgUrl: "assets/img/logo.png",
    dept: "Computer Science",
    course: "Bsc Computer Science",
    date: "21/10/2001",
    cardColor: Colors.blue,
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
        "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
    awardedBy: "Teacher 1",
    regNumber: "54321"
  ),
  TopStudent(
      name:"Student 2",
      imgUrl: "assets/img/logo.png",
      dept: "Computer Science",
      course: "Bsc Computer Science",
      date: "21/10/2001",
      cardColor: Colors.green,
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
          "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
      awardedBy: "Teacher 2",
      regNumber: "54321"
  ),
  TopStudent(
      name:"Student 3",
      imgUrl: "assets/img/logo.png",
      dept: "Computer Science",
      course: "Bsc Computer Science",
      date: "21/10/2001",
      cardColor: Colors.blue,
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
          "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
      awardedBy: "Teacher 3",
      regNumber: "54321"
  ),
  TopStudent(
      name:"Student 4",
      imgUrl: "assets/img/logo.png",
      dept: "Computer Science",
      course: "Bsc Computer Science",
      date: "21/10/2001",
      cardColor: Colors.green,
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
          "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
      awardedBy: "Teacher 1",
      regNumber: "54321"
  ),
  TopStudent(
      name:"Student 5",
      imgUrl: "assets/img/logo.png",
      dept: "Computer Science",
      course: "Bsc Computer Science",
      date: "21/10/2001",
      cardColor: Colors.green,
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
          "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
      awardedBy: "Teacher 1",
      regNumber: "54321"
  ),
];
