import 'package:app/admin_dashbord.dart';
import 'package:app/approval_cost.dart';
import 'package:app/finesh_jobs.dart';
import 'package:app/fixed_cost.dart';
import 'package:app/labor_cost.dart';
import 'package:app/materialcost.dart';
import 'package:app/view_jobs.dart';
import 'package:app/login.dart';
import 'package:app/working_jobs.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),

      // home: FormScreen(),
      // home: ListViews(),
      home: Dashbord(),
      //  home: CostApproval(),
      // home: MaterialCost(),
      //  home: LaborCost(),
      // home: FixedCost(),
      // home:WorkingJobs(),
      // home: FinshJobs(),

    );
  }
}
