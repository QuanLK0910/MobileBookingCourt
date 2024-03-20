import 'package:flutter/material.dart';

class BookingCourtCard extends StatefulWidget {
  @override
  _BookingCourtCardState createState() => _BookingCourtCardState();
}

class _BookingCourtCardState extends State<BookingCourtCard> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name = '';
  String _email = '';
  String _phoneNumber = '';

  void _showBookingForm() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Booking Confirmation'),
          content: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min, // Avoid potential overflow
                children: [
              // Add confirmation text here
              Text(
                'Are you sure you want to join this session?',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 10.0), // Add some spacing
              // Your existing form fields go here (replace with "...")
            ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // Close dialog
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save(); // Save form data
                  // Process booking information (_name, _email, _phoneNumber)
                  print(
                      'Booking confirmed for $_name ($_email, $_phoneNumber)');
                  Navigator.pop(context); // Close dialog after processing
                }
              },
              child: Text('Confirm Booking'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2.0,
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(children: [
        // ... rest of your bookingCourtCard code (image, details)
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            "https://cdn.pixabay.com/photo/2024/02/20/09/39/nuts-8585063_640.jpg",
            width: 150.0,
            height: 130.0,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ... rest of your bookingCourtCard code (court details)
              Text(
                "Football court",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Somewhere",
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: 16.0,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 4.0),
                  Text(
                    "22/2/2024 11:00-13:00",
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 4.0),
              ElevatedButton(
                onPressed: _showBookingForm,
                child: Text("Apply"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
