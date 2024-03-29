// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tak_tok/constant.dart';
import 'package:tak_tok/views/widgets/custom_add_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int pageIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor,
        onTap: (index){
          setState(() {
            pageIdx = index;
          });
        },
        currentIndex: pageIdx,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 25,),
          label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,size: 25,),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: customAddIcon(),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.message,size: 25),
              label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 25),
              label: 'Profile'),
        ],
      ),
      appBar: AppBar(
        title: Text(
          "TikToK",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(pageindex[pageIdx]),
      ),
    );
  }
}
