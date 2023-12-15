import 'package:clinic/core/app_constants.dart';
import 'package:clinic/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:clinic/views/widgets/custom_list_tile.dart';
import 'package:clinic/views/widgets/custom_material_button.dart';
import 'package:clinic/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class UserHomeView extends StatelessWidget {
  const UserHomeView({
    super.key,
  });

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: SizedBox(
                height: 125,
                child: Row(
                  children: [
                    // Image.asset('name'),
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
            ),
            CustomTextField(
              hintText: 'Patient-name',
            ),
            const SizedBox(
              height: 15,
            ),
            CustomListTile(
              text: 'Check-Up',
            ),
            CustomListTile(
              text: 'Re-Examination',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomMaterialButton(
              titel: 'Book',
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
