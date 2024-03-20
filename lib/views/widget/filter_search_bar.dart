import 'package:flutter/material.dart';
class FilterCalendarSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.filter_list),
          onPressed: () {
            print('Filter button pressed');
          },
        ),

        IconButton(
          icon: Icon(Icons.calendar_today),
          onPressed: () {
            print('Calender button pressed');
          },
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ],
    );
  }
}