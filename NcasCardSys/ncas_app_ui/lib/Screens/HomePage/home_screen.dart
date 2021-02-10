import 'package:flutter/material.dart';
import 'package:ncas_app_ui/Screens/Palette/constants.dart';

import '../../export.dart';

class Home extends StatefulWidget  {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: primeColor,
        elevation: 0.7,
        title: Text(
          "Ncas Cards",
          style: TextStyle(letterSpacing: 1, fontSize: 24),
        ),
        leading: GestureDetector(
          child: Icon(
            Icons.menu,
            size: 28,
          ),
          onTap: () {},
        ),
        actions: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Icon(
                Icons.search,
                size: 28,
              )),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Icon(
                Icons.account_circle,
                size: 28,
              ))
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(text: "UPDATE"),
            Tab(text: "SUBMIT"),
            Tab(text: "INFO"),
          ],
        ),

      ),
      drawer: Text("side nav"),
      body: TabBarView(
        controller: _tabController,
        children: [
          UpdateScreen(),
          SubmitScreen(),
          UpdateScreen()
        ],
      ),

    );
  }
}
