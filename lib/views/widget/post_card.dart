import 'package:flutter/material.dart';



Widget postCard(Size size) {
  return Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/63.jpg"),
              ),
              const SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Alex Thompson",
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(formatDate(DateTime.now().subtract(const Duration(days: 1)),)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Text("something here"),
          const SizedBox(height: 10.0),
          Row(
            children: [
              // ClipRRect for image and border
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  "https://images.unsplash.com/photo-1503220317375-aaad61436b1b",
                  fit: BoxFit.cover,
                  height: 100.0,
                ),
              ),
              const SizedBox(width: 10.0),
              // Details column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // Row for details icons and text
                      children: [
                        // People icon and text
                        Row(
                          children: [
                            Icon(Icons.group, color: Colors.black, size: 16.0),
                            Text(1.toString(),
                                style: const TextStyle(fontSize: 12.0)),
                          ],
                        ),
                        const SizedBox(width: 5.0),
                        // Location icon and text
                        Row(
                          children: [
                            Icon(Icons.location_on,
                                color: Colors.black, size: 16.0),
                            Text("Ho chi Minh",
                                style: const TextStyle(fontSize: 12.0)),
                          ],
                        ),
                        const SizedBox(width: 5.0),
                      ],
                    ),
                    const SizedBox(height: 5.0), // Add spacing between rows
                    Row(
                      // New row for additional details
                      children: [
                        Icon(Icons.sports_basketball,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            size: 16.0), // Adjust icon based on sport type
                        Text("tennis",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 12.0)),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Icon(Icons.access_time,
                        color: const Color.fromARGB(255, 0, 0, 0), size: 16.0),
                    Text(formatDate(DateTime.now().subtract(const Duration(days: 1),)),
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 12.0)),
                    const SizedBox(width: 5.0),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Align icons at opposite ends
            children: [
              Row(
                children: [
                  // Like icon
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () =>
                        print('Like button pressed'), // Example action
                  ),
                  Text('Like'),
                ],
              ),
              Row(
                children: [
                  // Comment icon
                  IconButton(
                    icon: Icon(Icons.comment),
                    onPressed: () =>
                        print('Comment button pressed'), // Example action
                  ),
                  Text('Comment'),
                ],
              ),
             
            ],
          ),
           
        ],
        
      ));
      
}
String formatDate(DateTime dateTime) {
  // Implement your desired date/time formatting logic here
  // This example returns a simple string representation
  return dateTime.toString();
}
