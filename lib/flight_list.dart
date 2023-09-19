import 'package:flutter/material.dart';

class FlightList extends StatelessWidget {
  final List<Map<String, dynamic>> flights;

  FlightList({required this.flights});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: flights.length,
      itemBuilder: (context, index) {
        final flight = flights[index];
        return FlightCard(
          flightName: flight['flightName'],
          rate: flight['rate'],
          departureTime: flight['departureTime'],
          arrivalTime: flight['arrivalTime'],
          duration: flight['duration'],
          startPoint: flight['startPoint'],
          endPoint: flight['endPoint'],
        );
      },
    );
  }
}

class FlightCard extends StatelessWidget {
  final String flightName;
  final String departureTime;
  final String arrivalTime;
  final String duration;
  final double rate;
  final String startPoint;
  final String endPoint;

  FlightCard({
    required this.flightName,
    required this.departureTime,
    required this.arrivalTime,
    required this.duration,
    required this.rate,
    required this.startPoint,
    required this.endPoint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            flightName,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$departureTime - $arrivalTime',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                duration,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Rate: \$${rate.toStringAsFixed(2)}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.flight_takeoff),
              SizedBox(width: 4),
              Text(startPoint),
              Spacer(),
              Icon(Icons.flight_land),
              SizedBox(width: 4),
              Text(endPoint),
            ],
          ),
        ],
      ),
    );
  }
}

class FlightListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> flights = [
      // Provide your flight data here...
      // Replace with actual flight details
      {
        'flightName': 'ABC123',
        'departureTime': '10:00 AM',
        'arrivalTime': '12:00 PM',
        'duration': '2h',
        'rate': 250.0,
        'startPoint': 'City A',
        'endPoint': 'City B',
      },
      // Add more flight details as needed
    ];

    return FlightList(flights: flights);
  }
}
