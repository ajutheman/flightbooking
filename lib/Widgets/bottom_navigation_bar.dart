import 'package:flightbooking/mpage.dart';
//import 'package:flightbooking/my_ticket.dart';
import 'package:flutter/material.dart';

import '../history.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int selectedIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  onTapBottom(int index) {
    print("object");
    setState(() {
      selectedIndex = index;
    });
  }

  List pages = [
    Mpage(), History(), History(),
    //MyTicket(),
    History(),
    // MyTicket(),
  ];

  // @override
  // void initState() {
  //   pageController.animateToPage(selectedIndex,
  //       duration: Duration(milliseconds: 300), curve: Curves.bounceIn);
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(child: pages.elementAt(selectedIndex)),
      // PageView(
      // controller: pageController,
      // onPageChanged: onTapBottom,
      // physics: NeverScrollableScrollPhysics(),
      // children: [...pages],
      // )),
      bottomNavigationBar:
          // BottomAppBar(
          //     child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     IconButton(
          //       onPressed: () {
          //         print("object11");
          //         pageController.animateTo(0,
          //             duration: Duration(milliseconds: 300), curve: Curves.easeIn);
          //         // Navigator.push(
          //         //     context,
          //         //     MaterialPageRoute(
          //         //       builder: (context) => MyTicket(),
          //         //     ));
          //         // print("object");
          //       },
          //       icon: Icon(Icons.home_outlined),
          //     ),
          //     IconButton(
          //       onPressed: () {
          //         print("object22");
          //
          //         pageController.animateTo(1,
          //             duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          //
          //         // Navigator.push(
          //         //     context,
          //         //     MaterialPageRoute(
          //         //       builder: (context) => MyTicket(),
          //         //     ));
          //         // print("object");
          //       },
          //       icon: Icon(Icons.airplane_ticket),
          //     ),
          //     IconButton(
          //       onPressed: () {
          //         print("object33");
          //
          //         pageController.animateTo(2,
          //             duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          //
          //         // Navigator.push(
          //         //     context,
          //         //     MaterialPageRoute(
          //         //       builder: (context) => MyTicket(),
          //         //     ));
          //         // print("object");
          //       },
          //       icon: Icon(Icons.home_outlined),
          //     ),
          //     IconButton(
          //       onPressed: () {
          //         print("object44");
          //
          //         pageController.animateTo(
          //           3,
          //           duration: Duration(milliseconds: 500),
          //           curve: Curves.easeIn,
          //         );
          //
          //         // Navigator.push(
          //         //     context,
          //         //     MaterialPageRoute(
          //         //       builder: (context) => MyTicket(),
          //         //     ));
          //         // print("object");
          //       },
          //       icon: Icon(Icons.settings),
          //     ),
          //   ],
          // )),
          // bottomNavigationBar:
          BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onTapBottom,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                print("object");
                onTapBottom(0);
              },
              icon: Icon(Icons.home_outlined),
            ),
            // Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                print("object");
                onTapBottom(1);
              },
              icon: Icon(Icons.airplane_ticket),
            ),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                print("object");
                onTapBottom(0);
              },
              icon: Icon(Icons.history_outlined),
            ),
            label: 'History',
          ),

          // BottomNavigationBarItem(
          //   icon: Icon(Icons.history_outlined),
          //   label: 'History',
          //   backgroundColor: Colors.yellow,
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
