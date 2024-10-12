import 'package:flutter/material.dart';
import 'package:hotel_management_app/screens/main/booking_screen.dart';
import 'package:hotel_management_app/screens/main/discover_screen.dart';
import 'package:hotel_management_app/screens/main/favourite_screen.dart';
import 'package:hotel_management_app/screens/main/message_screen.dart';
import 'package:hotel_management_app/services/firebase_services.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> screenList = const [
    DiscoverScreen(),
    FavouriteScreen(),
    BookingScreen(),
    MessageScreen(),
  ];

  int screenNo = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    FirebaseServices.getHotels();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[screenNo],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: 400,
          height: 70,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color.fromARGB(215, 0, 0, 0)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bottomNavigationIcon(
                  index: 0,
                  icon: Icons.ac_unit,
                  navigationText: "Discover",
                ),
                bottomNavigationIcon(
                  index: 1,
                  icon: Icons.ac_unit,
                  navigationText: "Favorites",
                ),
                bottomNavigationIcon(
                  index: 2,
                  icon: Icons.ac_unit,
                  navigationText: "Bookings",
                ),
                bottomNavigationIcon(
                  index: 3,
                  icon: Icons.ac_unit,
                  navigationText: "Messages",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomNavigationIcon(
      {required IconData icon,
      required String navigationText,
      required int index}) {
    return InkWell(
      onTap: () {
        setState(() {
          screenNo = index;
        });
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: index == screenNo ? Colors.white : Colors.grey,
            size: 18,
          ),
          Text(
            navigationText,
            style: TextStyle(
                color: index == screenNo ? Colors.white : Colors.grey,
                fontSize: 12),
          )
        ],
      ),
    );
  }
}
