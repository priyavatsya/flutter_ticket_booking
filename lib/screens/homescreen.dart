import 'package:flightestimate/component/flying_details.dart';
import 'package:flightestimate/component/sorting_details.dart';
import 'package:flightestimate/component/tabs.dart';
import 'package:flutter/material.dart';
import 'package:flightestimate/component/ticketdetail.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 490.0,
          decoration: BoxDecoration(
              color: Colors.purple.shade500,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45.0),
                  bottomRight: Radius.circular(45.0))),
        ),
        Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0),
              FlyingDetails(),
              SizedBox(height: 20.0),
              SortingDetails(),
              SizedBox(height: 15.0),
              MyTabs(),
              SizedBox(height: 10.0),
              FlightTickets()
            ],
          ),
        )
      ],
    );
  }
}
