import 'package:flutter/material.dart';

import '../Constants/constants.dart';
class search_field extends StatefulWidget {
  const search_field({super.key});

  @override
  State<search_field> createState() => _search_fieldState();
}

class _search_fieldState extends State<search_field> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(

        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            fillColor: secondary,
            filled: true,
            hintText: "Search",
            hintStyle: TextStyle(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.w400
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
            )
        ),
      ),
    );
  }
}
