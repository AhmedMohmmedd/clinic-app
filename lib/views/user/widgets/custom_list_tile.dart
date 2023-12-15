
import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  CustomListTile({
    super.key,
    this.value = false,
    required this.text,
  });
  bool? value;
  final String text;
  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        title: Text(
          widget.text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Checkbox(
          activeColor: Colors.teal[400],
          value: widget.value,
          onChanged: (newValue) {
            setState(() {
              widget.value = newValue;
            });
          },
        ),
      ),
    );
  }
}
