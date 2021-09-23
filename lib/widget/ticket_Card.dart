import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flightestimate/utility/theme_style.dart';

class TicketCard extends StatefulWidget {
  final int price;
  final String destinationCode;
  final String originCode;
  final String arrivalTime;
  final String departureTime;
  final bool stops;
  final String totalTime;
  final bool ticketType;
  TicketCard(
      {this.price,
        this.arrivalTime,
        this.departureTime,
        this.destinationCode,
        this.originCode,
        this.stops,
        this.totalTime,
        this.ticketType});
  @override
  _TicketCardState createState() => _TicketCardState();
}

class _TicketCardState extends State<TicketCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 18.0),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 1),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 28.0, right: 28.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('\$${widget.price}',
                              style: ThemeStyles.ticketPrice)
                        ],
                      ),
                      SizedBox(height: 30.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Fr 6 Mar.', style: ThemeStyles.greyStyle),
                          Text('Fr 6 Mar.', style: ThemeStyles.greyStyle),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('${widget.originCode}',
                              style: ThemeStyles.mainBlackTextStyle),
                          Text('${widget.destinationCode}',
                              style: ThemeStyles.mainBlackTextStyle)
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('${widget.departureTime}',
                              style: ThemeStyles.subBlackTextStyle),
                          Text('${widget.arrivalTime}',
                              style: ThemeStyles.subBlackTextStyle),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.blur_on, color: Colors.black26),
                            Text('- - - - - - - - - - - '),
                            Icon(Entypo.aircraft_take_off, color: Colors.black26),
                            Text('- - - - - - - - - - - '),
                            Icon(Icons.blur_on, color: Colors.black26),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('${widget.totalTime}',
                              style: ThemeStyles.greyStyle),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: widget.ticketType ? Colors.green.shade400 : Colors.grey,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                  ),
                  height: 70.0,
                  width: 80.0,
                  child: widget.ticketType
                      ? Center(
                    child: Text(
                      'British Air',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                      : Center(
                    child: Text(
                      'American Air',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
