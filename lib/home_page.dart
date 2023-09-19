import 'package:flightbooking/Widgets/text_widget.dart';
import 'package:flightbooking/booking_search.dart';
import 'package:flutter/material.dart';

import 'frist_page.dart';
import 'main_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(image: DecorationImage(image:  AssetImage('assets/Image/img.png'),fit: BoxFit.cover),),
             // color: Colors.black,

            ),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Text(
                    'Explore Exciting Destinations',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  ),
                  SizedBox(height: 80),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: ContinuousRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPage(),
                              //FristPage(),
                            ));
                      },
                      child: Text('Get Started',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  TextWidget(text: "  ",fontSize: 14,onPressed: (){
                    print("123");
                  },)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
