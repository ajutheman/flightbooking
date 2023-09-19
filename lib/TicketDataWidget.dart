import 'package:flutter/material.dart';

class TicketDataWidget extends StatelessWidget {
  final TicketModel ticket;

  const TicketDataWidget({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 120.0,
                height: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(width: 1.0, color: Colors.green),
                ),
                child: Center(
                  child: Text(
                    ticket.classType,
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    ticket.departure,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.flight_takeoff,
                      color: Colors.pink,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      ticket.arrival,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Flight Ticket',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TicketDetailsWidget(
                  title1: 'Passengers',
                  desc1: ticket.passengerName,
                  title2: 'Date',
                  desc2: ticket.date,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, right: 52.0),
                  child: TicketDetailsWidget(
                    title1: 'Flight',
                    desc1: ticket.flightNumber,
                    title2: 'Gate',
                    desc2: ticket.gate,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, right: 53.0),
                  child: TicketDetailsWidget(
                    title1: 'Class',
                    desc1: ticket.classType,
                    title2: 'Seat',
                    desc2: ticket.seat,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
            child: Container(
              width: 250.0,
              height: 60.0,
              // Add your image or barcode widget here
            ),
          ),
        ],
      ),
    );
  }
}

class TicketDetailsWidget extends StatelessWidget {
  final String title1;
  final String desc1;
  final String title2;
  final String desc2;

  const TicketDetailsWidget({
    Key? key,
    required this.title1,
    required this.desc1,
    required this.title2,
    required this.desc2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title1,
                style: const TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  desc1,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title2,
                style: const TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  desc2,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TicketModel {
  final String classType;
  final String departure;
  final String arrival;
  final String flightNumber;
  final String gate;
  final String seat;
  final String passengerName;
  final String date;

  TicketModel({
    required this.classType,
    required this.departure,
    required this.arrival,
    required this.flightNumber,
    required this.gate,
    required this.seat,
    required this.passengerName,
    required this.date,
  });
}
