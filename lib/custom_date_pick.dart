import 'package:flutter/material.dart';

class CustomDatePick extends StatefulWidget {
  final IconData icon;
  final String lable;
  const CustomDatePick({super.key, required this.icon, required this.lable});

  @override
  State<CustomDatePick> createState() => _CustomDatePickState();
}

class _CustomDatePickState extends State<CustomDatePick> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(widget.icon),
        labelText: widget.lable,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.blue),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
      ),
    );
  }
}
