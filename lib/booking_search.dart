import 'package:flutter/material.dart';

class BookingSearch extends StatefulWidget {
  const BookingSearch({super.key});

  @override
  State<BookingSearch> createState() => _BookingSearchState();
}

class _BookingSearchState extends State<BookingSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
      children: <Widget>[
        // Background image
        Positioned.fill(
          child: Image.asset(
            'assets/image/img.png',
            fit: BoxFit.cover,
          ),
        ),
        // Booking form
        Positioned(
          left: 26.0,
          right: 16.0,
          bottom: 500.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Book a room'),
                // Form fields
              ],
            ),
          ),
        ),
      ],
    )
      ,);
  }
}
