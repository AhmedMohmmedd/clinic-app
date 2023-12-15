import 'package:clinic/views/user/widgets/booking_view_item.dart';
import 'package:flutter/material.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, builder) {
            return const BookingViewItem();
          }),
    );
  }
}
