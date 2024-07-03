import 'package:flutter/material.dart';
import 'package:hms_project/presentation/home_page/view/booking_page.dart';
import 'package:hms_project/presentation/home_page/view/new_booking_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> items = [
    {
      'title': 'Bookings',
      'icon': Icons.book,
      'bgColor': Colors.black,
      'textColor': Colors.white,
    },
    {
      'title': 'New Bookings',
      'icon': Icons.new_releases,
      'bgColor': Color(0xff0ea69f),
      'textColor': Colors.white
    },
    {
      'title': 'Pending Bookings',
      'icon': Icons.pending,
      'bgColor': Colors.orange,
      'textColor': Colors.black
    },
    {
      'title': 'Reports',
      'icon': Icons.report,
      'bgColor': Colors.black,
      'textColor': Colors.white
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -------------------------------------------------------------------------------------------------

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GridView.builder(
            shrinkWrap: true,
            itemCount: 4, // Set your desired number of items
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Adjust as per your needs
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                mainAxisExtent: 200),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppointmentBookingForm(),
                      ),
                    );
                  } else if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewBookingPage(),
                      ),
                    );
                  } else if (index == 2) {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => QuestionThree(),
                    //   ),
                    // );
                  } else if (index == 3) {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => QuestionFour(),
                    //   ),
                    // );
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: items[index]['bgColor']),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        items[index]['icon'],
                        size: 50.0,
                        color: items[index]['textColor'],
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        items[index]['title'],
                        style: TextStyle(
                          fontSize: 20.0,
                          color: items[index]['textColor'],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
