import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerField extends StatefulWidget {
  final DateTimeRange initialDateRange;
  final Function(DateTimeRange) onDateRangeSelected;
  final String label;

  const DatePickerField({
    Key? key,
    required this.initialDateRange,
    required this.onDateRangeSelected,
    required this.label,
  }) : super(key: key);

  @override
  _DatePickerFieldState createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  late DateTimeRange _selectedDateRange;

  @override
  void initState() {
    super.initState();
    _selectedDateRange = widget.initialDateRange;
  }

  Future<void> _selectDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      initialDateRange: _selectedDateRange,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != _selectedDateRange) {
      setState(() {
        _selectedDateRange = picked;
      });
      widget.onDateRangeSelected(_selectedDateRange);
    }
  }

  @override
  Widget build(BuildContext context) {
    final formattedStartDate =
        DateFormat('MMM d', 'en_US').format(_selectedDateRange.start);
    final formattedEndDate =
        DateFormat('MMM d, y', 'en_US').format(_selectedDateRange.end);

    return GestureDetector(
      onTap: () => _selectDateRange(context),
      child: Container(
        width: 340,
        // height: ,
        decoration: BoxDecoration(
          // color: Color(0xfff4f5f9),
          color: Color(0xfff4f5f9),
          borderRadius: BorderRadius.circular(18),
        ),
        // padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                widget.label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black12,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '$formattedStartDate - $formattedEndDate',
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
