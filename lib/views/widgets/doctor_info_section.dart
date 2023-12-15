
import 'package:clinic/core/app_constants.dart';
import 'package:flutter/material.dart';

class DoctorInfoSection extends StatelessWidget {
  const DoctorInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Image.asset('assets/images/logo (2).png'),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const Text(
                      'Dr: Ahmed Mohmmed',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: AppConstants.kPrimaryColor,
                        size: 22,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('143'),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.thumb_down,
                        color: Colors.red,
                        size: 22,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('17'),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
