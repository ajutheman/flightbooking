import 'package:flutter/material.dart';

import 'notification_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String userGreeting =
      greeting('John'); // Replace 'John' with the actual user's name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Image/img.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 50,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/Image/img_2.png",
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        'Hello',
                        style: TextStyle(color: Colors.blue),
                        textScaleFactor: 1.5,
                      ),
                      subtitle: Text(
                        userGreeting,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    NotificationPage()), // Replace NextPage() with the actual widget for the next page
                          );
                        },
                        child: CircleAvatar(
                          radius: 24, // Adjust the radius to increase the size
                          backgroundColor: Colors
                              .blue, // Change the background color to your desired color
                          child: Icon(Icons.notification_add_rounded,
                              color: Colors.white,
                              size: 30), // Adjust size as needed
                        ),
                      ),
                    ),
                  ),
                  Container(),
                  Positioned(
                    top: 300,
                    bottom: 100,
                    right: 20,
                    left: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 300,
                      height: 300,
                      child: Column(
                        children: [
                          // CustomSearchField(icon: Icons.cabin, lable: "hg"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String greeting(String userName) {
  var now = DateTime.now();
  if (now.hour < 12) {
    return 'Good morning, $userName';
  } else if (now.hour < 17) {
    return 'Good afternoon, $userName';
  }
  return 'Good evening, $userName';
}
