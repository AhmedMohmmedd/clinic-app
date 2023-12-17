import 'package:clinic/core/app_constants.dart';
import 'package:clinic/views/user/booking_view.dart';
import 'package:clinic/views/user/profile_view.dart';
import 'package:clinic/views/user/user_home_view.dart';
import 'package:flutter/material.dart';

class UserView extends StatefulWidget {
  UserView({
    super.key,
  });

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  int index = 0;

  final pages = [
    UserHomeView(),
    BookingView(),
    ProFileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: AppConstants.kPrimaryColor,
        title: const Text(
          'Booking',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
        ),
      ),
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() {
          this.index = index;
        }),
        height: 65,
        // backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            selectedIcon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.fact_check),
            selectedIcon: Icon(Icons.fact_check_outlined),
            label: 'Booking',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            selectedIcon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

//GlobalKey<ScaffoldState> _key = GlobalKey();
// InkWell(
//         onTap: () {
//           _key.currentState.openDrawer();
//         },
//         child: Icon(
//           icon,
//           color: color,
//         ),
//       ),