import 'package:flightestimate/widget/ticket_Card.dart';
import 'package:flutter/material.dart';


class FlightTickets extends StatefulWidget {
  @override
  _FlightTicketsState createState() => _FlightTicketsState();
}

class _FlightTicketsState extends State<FlightTickets> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          TicketCard(
            price: 1121,
            originCode: 'JKT',
            destinationCode: 'TKY',
            departureTime: '2:55 pm',
            arrivalTime: '8:20 pm',
            totalTime: '13 h 25 min',
            ticketType: true,
          ),

        ],
      ),
    );
  }
}
