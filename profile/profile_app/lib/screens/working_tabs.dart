import 'package:flutter/material.dart';
import 'package:profile_app/screens/profile.dart';

class WorkingWithTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Profile(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_boat),
          ],
        ),
      ),
    );
  }
}
