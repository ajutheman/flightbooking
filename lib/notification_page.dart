import 'package:flutter/material.dart';

class NotificationItem {
  final String title;
  final String detail;
  final IconData icon;
  final DateTime time;

  NotificationItem({
    required this.title,
    required this.detail,
    required this.icon,
    required this.time,
  });
}

class NotificationPage extends StatelessWidget {
  final List<NotificationItem> notifications = [
    NotificationItem(
      title: "New Message",
      detail: "You have a new message",
      icon: Icons.message,
      time: DateTime.now(),
    ),
    NotificationItem(
      title: "New Message",
      detail: "You have a new message",
      icon: Icons.message,
      time: DateTime.now(),
    ),
    NotificationItem(
      title: "New Message",
      detail: "You have a new message",
      icon: Icons.message,
      time: DateTime.now(),
    ),
    NotificationItem(
      title: "New Message",
      detail: "You have a new message",
      icon: Icons.message,
      time: DateTime.now(),
    ),
    NotificationItem(
      title: "Reminder",
      detail: "Don't forget the meeting at 3 PM",
      icon: Icons.event,
      time: DateTime.now().subtract(Duration(hours: 1)),
    ),
    // Add more notification items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return ListTile(
            leading: Icon(notification.icon),
            title: Text(notification.title),
            subtitle: Text(notification.detail),
            trailing: Text(_formatTime(notification.time)),
          );
        },
      ),
    );
  }

  String _formatTime(DateTime time) {
    final now = DateTime.now();
    if (now.day == time.day) {
      return "${time.hour}:${time.minute}";
    } else {
      return "${time.month}/${time.day}";
    }
  }
}

void main() {
  runApp(MaterialApp(home: NotificationPage()));
}
