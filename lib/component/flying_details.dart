import 'package:flutter/material.dart';
import 'package:flightestimate/utility/theme_style.dart';

class FlyingDetails extends StatefulWidget {
  @override
  _FlyingDetailsState createState() => _FlyingDetailsState();
}

class _FlyingDetailsState extends State<FlyingDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Jakarta', style: ThemeStyles.departureTextStyle),
              Text('Fr 6 Mar.', style: ThemeStyles.travelDateTextStyle)
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Text('Tokyp', style: ThemeStyles.arrivalTextStyle)
            ],
          )
        ],
      ),
    );
  }
}
