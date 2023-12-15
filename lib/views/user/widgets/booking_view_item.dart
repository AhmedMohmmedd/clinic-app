
import 'package:flutter/material.dart';

class BookingViewItem extends StatelessWidget {
  const BookingViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: Colors.grey[200],
        ),
        child: const Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                // 'احمد محمد محمد',
                'Ahmed Mohmmed Kirsha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Check-Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '28-11-2024',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'at: 4,5 PM',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Material(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(99)),
                    child: MaterialButton(
                      height: 80,
                      textColor: Colors.white,
                      onPressed: null,
                      child: Text(
                        'Canceld',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
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
