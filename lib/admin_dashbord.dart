// ignore_for_file: prefer_const_constructors

// import 'dart:js';

// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashbord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dashboard",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: DashbordHome(),
    );
  }
}

class DashbordHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                )),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    "Hi shamith",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                    "Welcome to Admin",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white54),
                  ),
                  trailing: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/man.png"),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColorLight,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                ),
              ),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard('Working Jobs', CupertinoIcons.person_2,
                      Colors.deepOrangeAccent),
                  itemDashboard('Approved Cost', CupertinoIcons.money_dollar,
                      Color.fromARGB(255, 236, 219, 59)),
                  itemDashboard('Day Close',
                      CupertinoIcons.calendar_badge_minus, Colors.brown),
                  itemDashboard(
                      'finsh Jobs', CupertinoIcons.doc_append, Colors.amber),
                  itemDashboard(
                      'Seeting', CupertinoIcons.settings, Colors.grey),
                  itemDashboard('Notification', CupertinoIcons.bell,
                      Colors.blueAccent),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  itemDashboard(String title, iconData, Color background) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  // color: ,
                  spreadRadius: 2,
                  blurRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: background,
                shape: BoxShape.circle,
              ),
              child: Icon(
                iconData,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(title)
          ],
        ),
      );
}
