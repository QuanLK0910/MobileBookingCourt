import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/views/widget/booking_court_card.dart';
import 'package:flutter_app/views/widget/filter_search_bar.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          children: [
            FilterCalendarSearchBar(),
            Expanded(
              child: SizedBox(
                  child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return (BookingCourtCard());
                },
              )),
            )
          ],
        ),
      ),
    );
  }
}
