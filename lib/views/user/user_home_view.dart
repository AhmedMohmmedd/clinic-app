import 'package:clinic/views/user/widgets/custom_list_tile.dart';
import 'package:clinic/views/widgets/custom_text_field.dart';
import 'package:clinic/views/user/widgets/doctor_info_section.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_material_button.dart';

class UserHomeView extends StatefulWidget {
  UserHomeView({
    super.key,
  });

  @override
  State<UserHomeView> createState() => _UserHomeViewState();
}

class _UserHomeViewState extends State<UserHomeView> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const DoctorInfoSection(),
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
            height: 20,
          ),
          //DteTime Section------------------------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 24,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: const Color.fromARGB(255, 117, 153, 182),
                  ),
                  child: Center(
                    child: Text(
                      '${date.day}-${date.month}-${date.year}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () async {
                    DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: date,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (newDate == null) return;
                    setState(() {
                      date = newDate;
                    });
                  },
                  child: Text(
                    'Date',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  color: const Color.fromARGB(255, 117, 153, 182),
                  height: 24,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomMaterialButton(
            titel: 'Book',
          ),
        ],
      ),
    );
  }
}
