import 'package:flutter/material.dart';

class CustomAddPerson extends StatefulWidget {
  final String label;

  const CustomAddPerson({Key? key, required this.label}) : super(key: key);

  @override
  _CustomAddPersonState createState() => _CustomAddPersonState();
}

class _CustomAddPersonState extends State<CustomAddPerson> {
  int _personCount = 1; // Initial person count

  void _incrementPersonCount() {
    setState(() {
      _personCount++;
    });
  }

  void _decrementPersonCount() {
    if (_personCount > 1) {
      setState(() {
        _personCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 89,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: Color(0xfff4f5f9), // Fill color
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black12,
            ),
          ),
          SizedBox(height: 1),
          Row(
            children: [
              Text(
                '$_personCount', // Display the current person count
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 1, width: 10),
              Text(
                'person',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 1, width: 48),
              IconButton(
                onPressed: _decrementPersonCount,
                icon: Icon(Icons.remove),
              ),
              SizedBox(width: 10),
              Text(
                '$_personCount', // Display the current person count
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 10),
              IconButton(
                onPressed: _incrementPersonCount,
                icon: Icon(Icons.add),
              ),
            ],
          ),
          // SizedBox(height: 5),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: CustomAddPerson(label: 'Travelers'),
      ),
    ),
  ));
}
