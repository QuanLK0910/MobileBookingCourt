import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
     child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          // Check if avatar is available
              CircleAvatar(
                backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.DpK2uYJq_8hjMv7JGXJG7gHaI-?w=142&h=180&c=7&r=0&o=5&pid=1.7"),
                radius: 24.0,
              ),
            SizedBox(width: 16.0), // Add spacing between avatar and content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "A user have create new tennis session",
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4.0),
                  Text("Come and join me nowww"),
                  SizedBox(height: 8.0),
                  Text(
                    "09/10/2024"
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  
}
