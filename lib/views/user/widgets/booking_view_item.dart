import 'package:clinic/core/app_constants.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  // 'احمد محمد محمد',
                  'Ahmed Mohmmed Kirsha',
                  style: AppConstants.textStyle24),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Check-Up',
                style: AppConstants.textStyle18
                    .copyWith(fontStyle: FontStyle.normal),
              ),
              const SizedBox(
                height: 15,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Column(
                    children: [
                      Text(
                        '28-11-2024',
                        style:AppConstants.textStyle16
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'at: 4,5 PM',
                        style: AppConstants.textStyle16
                      ),
                    ],
                  ),
                  Material(
                    color: Colors.red,
                    borderRadius:const BorderRadius.all(Radius.circular(99)),
                    child: MaterialButton(
                      height: 80,
                      textColor: Colors.white,
                      onPressed: null,
                      child: Text(
                        'Canceld',
                        style:AppConstants.textStyle18.copyWith(
                          fontStyle: FontStyle.normal,
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
