import 'package:flutter/material.dart';

import 'notification_page.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff172035),
              child: Column(
                children: [
                  SizedBox(height: 29),
                  ListTile(
                    leading: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationPage(),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Color(0xfff2e3449),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      "Shahinur Rahman",
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        print("object");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationPage(),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 24,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/Image/img_5.png",
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 14,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Icon(
                      Icons.airplane_ticket,
                      color: Colors.black,
                      size: 20.0,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Text("MY ACCOUNT"),
                  ),
                ],
              ),
            ),
            // Add your ExpansionTiles here
            Column(
              children: <Widget>[
                ExpansionTile(
                  title: const Text('ExpansionTile 1'),
                  subtitle: Text('Trailing expansion arrow icon'),
                  children: <Widget>[
                    ListTile(title: Text('This is tile number 1')),
                  ],
                ),
                ExpansionTile(
                  title: const Text('ExpansionTile 2'),
                  subtitle: const Text('Custom expansion arrow icon'),
                  trailing: Icon(
                    _customTileExpanded
                        ? Icons.arrow_drop_down_circle
                        : Icons.arrow_drop_down,
                  ),
                  children: const <Widget>[
                    ListTile(title: Text('This is tile number 2')),
                  ],
                  onExpansionChanged: (bool expanded) {
                    setState(() {
                      _customTileExpanded = expanded;
                    });
                  },
                ),
                ExpansionTile(
                  title: const Text('ExpansionTile 3'),
                  subtitle: Text('Leading expansion arrow icon'),
                  controlAffinity: ListTileControlAffinity.leading,
                  children: <Widget>[
                    ListTile(title: Text('This is tile number 3')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
