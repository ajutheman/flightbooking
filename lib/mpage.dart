import 'package:flightbooking/Widgets/custom_add_person.dart';
import 'package:flightbooking/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Widgets/date_picker_field.dart'; // Make sure to import the DatePickerField widget
import 'custom_search_field.dart';
import 'frist_page.dart';
import 'notification_page.dart';

class Mpage extends StatefulWidget {
  const Mpage({super.key});

  @override
  State<Mpage> createState() => _MpageState();
}

class _MpageState extends State<Mpage> {
  String userGreeting = greeting('John');

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarColor: Color(0xff172035),
          statusBarIconBrightness: Brightness.light), //<-- SEE HERE
      child:
          // Scaffold(
          //   backgroundColor: Color(0xff172035),
          //   body:
          SingleChildScrollView(
        child: Container(
          color: Color(0xff172035),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 55.0),
                child: Container(
                  color: Color(0xff172035),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // ColoredBox(
                      //     child: SizedBox(
                      //         height: 30, width: MediaQuery.of(context).size.width),
                      //     color: Color(0xff172035)),
                      ListTile(
                        leading: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Profile(),
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
                        title: Text(
                          userGreeting,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color(0xfff4f5f9),
                            //fontWeight: FontWeight.bold,
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
                              Icons.notifications,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        width: MediaQuery.of(context).size.width,
                        //color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Securely Book",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                              ),
                            ),
                            Text(
                              "your Flight Ticket",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Spacer(),
                      Container(
                        height: MediaQuery.of(context).size.height / 1.8,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 320,
                right: 20,
                left: 20,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19)),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    // decoration: BoxDecoration(color: Colors.red),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(25),
                    //   color: Colors.white,
                    // ),
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    width: 950,
                    height: 360,
                    child: Row(
                      children: [
                        Container(
                          height: 350,
                          width: 340,
                          child: Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, top: 10, right: 10),
                                  child: CustomSearchField(
                                      icon: Icons.flight_takeoff_outlined,
                                      label: "from")),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 12, top: 10, right: 10),
                                  child: CustomSearchField(
                                      icon: Icons.flight_land, label: "To")),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 5, right: 1, left: 1),
                                    child: SizedBox(
                                      width: 335,
                                      height: 65,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: DatePickerField(
                                          initialDateRange: DateTimeRange(
                                              start: DateTime.now(),
                                              end: DateTime.now()),
                                          onDateRangeSelected:
                                              (DateTimeRange) {},

                                          label:
                                              'Select Date', // Replace with 'Return' for the other field
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: EdgeInsets.only(
                                  //       top: 9, right: 1, left: 4),
                                  //   child: SizedBox(
                                  //     width: 150,
                                  //     height: 65,
                                  //     child: Padding(
                                  //       padding: const EdgeInsets.all(8.0),
                                  //       child: DatePickerField(
                                  //         label: 'Return',
                                  //         initialDateRange: DateTimeRange(
                                  //             start: DateTime.now(),
                                  //             end: DateTime.now()
                                  //                 .add(Duration(days: 5))),
                                  //         onDateRangeSelected:
                                  //             (DateTimeRange) {}, // Replace with 'Return' for the other field
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: CustomAddPerson(label: "Travelers"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 10, top: 10),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(300, 30),
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
                                          builder: (context) => FristPage(),
                                          //MainPage(),
                                          //FristPage(),
                                        ));
                                  },
                                  child: Text(
                                    'Search',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 6.1),
              Positioned(
                  bottom: 160,
                  left: 20,
                  right: 20,
                  child: Container(
                    // color: Colors.white12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upcoming flights",
                          style: TextStyle(
                              // color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        // SizedBox(width: 110),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FristPage(),
                                    //MainPage(),
                                    //FristPage(),
                                  ));
                            },
                            icon: Icon(Icons.arrow_forward_ios_rounded))
                        // ElevatedButton(
                        //   style: ElevatedButton.styleFrom(
                        //     //fixedSize: Size(90, 50),
                        //     backgroundColor: Colors.white,
                        //     shape: ContinuousRectangleBorder(
                        //       side: BorderSide.none,
                        //       borderRadius: BorderRadius.all(
                        //         Radius.circular(10),
                        //       ),
                        //     ),
                        //   ),
                        //   onPressed: () {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //           builder: (context) => FristPage(),
                        //           //MainPage(),
                        //           //FristPage(),
                        //         ));
                        //   },
                        //   child: Text(
                        //     'See All',
                        //     style: TextStyle(
                        //       color: Colors.black12,
                        //       fontSize: 10,
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  )),
              // Positioned(
              //   child: TicketWidget(
              //     width: 350,
              //     height: 500,
              //     isCornerRounded: true,
              //     padding: EdgeInsets.all(20),
              //     child: TicketData(),
              //   ),
              // )

              // Positioned(
              //   bottom: 150,
              //   left: 20,
              //   right: 20,
              //   child: FlightList(
              //     flights: [
              //       // Provide your flight data here...
              //       // Replace with actual flight details
              //       {
              //         'flightName': 'ABC123',
              //         'rate': 250.0,
              //         'departureTime': '10:00 AM',
              //         'arrivalTime': '12:00 PM',
              //         'duration': '2h',
              //         'startPoint': 'City A',
              //         'endPoint': 'City B',
              //       },
              //       // Add more flight details as needed
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
//
// class TicketData extends StatelessWidget {
//   const TicketData({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               width: 120.0,
//               height: 25.0,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30.0),
//                 border: Border.all(width: 1.0, color: Colors.green),
//               ),
//               child: const Center(
//                 child: Text(
//                   'Business Class',
//                   style: TextStyle(color: Colors.green),
//                 ),
//               ),
//             ),
//             Row(
//               children: const [
//                 Text(
//                   'LHR',
//                   style: TextStyle(
//                       color: Colors.black, fontWeight: FontWeight.bold),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(left: 8.0),
//                   child: Icon(
//                     Icons.flight_takeoff,
//                     color: Colors.pink,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(left: 8.0),
//                   child: Text(
//                     'ISL',
//                     style: TextStyle(
//                         color: Colors.black, fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//         const Padding(
//           padding: EdgeInsets.only(top: 20.0),
//           child: Text(
//             'Flight Ticket',
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 25.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ticketDetailsWidget(
//                   'Passengers', 'Hafiz M Mujahid', 'Date', '28-08-2022'),
//               Padding(
//                 padding: const EdgeInsets.only(top: 12.0, right: 52.0),
//                 child: ticketDetailsWidget('Flight', '76836A45', 'Gate', '66B'),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 12.0, right: 53.0),
//                 child: ticketDetailsWidget('Class', 'Business', 'Seat', '21B'),
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
//           child: Container(
//             width: 250.0,
//             height: 60.0,
//             decoration: const BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage('assets/barcode.png'),
//                     fit: BoxFit.cover)),
//           ),
//         ),
//         const Padding(
//           padding: EdgeInsets.only(top: 10.0, left: 75.0, right: 75.0),
//           child: Text(
//             '0000 +9230 2884 5163',
//             style: TextStyle(
//               color: Colors.black,
//             ),
//           ),
//         ),
//         const SizedBox(height: 30),
//         const Text('         Developer: instagram.com/DholaSain')
//       ],
//     );
//   }
// }

String greeting(String userName) {
  var now = DateTime.now();
  if (now.hour < 12) {
    return 'Good morning ';
  } else if (now.hour < 17) {
    return 'Good afternoon ';
  }
  return 'Good evening';
}

void main() {
  runApp(MaterialApp(
    home: Mpage(),
  ));
}
