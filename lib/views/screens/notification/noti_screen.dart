import 'package:flutter/material.dart';
import 'package:flutter_app/views/widget/user_title.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          // Use Row to arrange elements horizontally
          children: [
            Image.asset('assets/images/logo.png',
                width: 150), // Add logo image
            Spacer(), // Add spacing between logo and text
            Text(
              'Notifications',
              style: TextStyle(fontSize: 25.0),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return NotificationCard();
        },
      ),
    );
  }
}
