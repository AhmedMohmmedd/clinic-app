
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 70,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon( 
                  Icons.home,
                  size: 30,
                ),
                Text('Home'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.fact_check,
                  size: 30,
                ),
                Text('Booking'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.person,
                  size: 30,
                ),
                Text('Profile'),
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}
