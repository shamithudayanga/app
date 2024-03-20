// ignore_for_file: prefer_const_constructors

// import 'dart:js';

// import 'dart:html';

// import 'dart:html';

import 'package:app/approval_cost.dart';
import 'package:app/finesh_jobs.dart';
import 'package:app/notificationView.dart';
import 'package:app/working_jobs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

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
                  height: 30,
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
              padding: EdgeInsets.symmetric(horizontal: 70),
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
                mainAxisSpacing: 50,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorkingJobs()));
                    },
                    child: itemDashboard(
                      'Working Jobs',
                      CupertinoIcons.person_2,
                      Colors.deepOrangeAccent,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CostApproval()));
                    },
                    child: itemDashboard(
                      'Approved Cost',
                      CupertinoIcons.money_dollar,
                      Color.fromARGB(255, 236, 219, 59),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CostApproval()));
                    },
                    child: itemDashboard(
                      'Day Close',
                      CupertinoIcons.calendar_badge_minus,
                      Colors.brown,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FinshJobs()));
                    },
                    child: itemDashboard(
                      'finsh Jobs',
                      CupertinoIcons.doc_append,
                      Colors.amber,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>FinshJobs())); //seting
                    },
                    child: itemDashboard(
                      'Seeting',
                      CupertinoIcons.settings,
                      Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notifications()));
                    },
                    child: itemDashboard(
                      'Notification',
                      CupertinoIcons.bell,
                      Colors.blueAccent,
                    ),
                  ),
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
