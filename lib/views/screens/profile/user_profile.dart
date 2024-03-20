import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
// import 'package:google_sign_in/google_sign_in.dart';

import 'package:flutter_app/views/widget/profile_grid_view.dart';
import 'package:flutter_app/views/widget/user_detail.dart';
import 'package:flutter_app/views/screens/auth/login_screen.dart';

import 'package:flutter_app/core/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
        actions: [
          IconButton(
              onPressed: () async {
                googleSignIn.disconnect();

                await FirebaseAuth.instance.signOut().then((value) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                      (route) => false);
                });
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  // Center content vertically
          children: [
            Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image:NetworkImage("https://th.bing.com/th?id=OIP.04DMgWld3haXBdCT8ZZUkAHaFe&w=290&h=214&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20.0), // Add some spacing
            Text(
              'Welcome, John Doe! ',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0), // Add some spacing
            Column(
              mainAxisAlignment: MainAxisAlignment.center,  // Center buttons horizontally
              children: [
                NavigationButton(text: 'Settings', onPressed: () => print('Settings Pressed')),
                SizedBox(width: 10.0), // Add spacing between buttons
               
                NavigationButton(text: 'History', onPressed: () => print('History Pressed')),
                SizedBox(width: 10.0), // Add spacing between buttons
                NavigationButton(text: 'Favorites', onPressed: () => print('Favorites Pressed')),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class NavigationButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const NavigationButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
      
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // Set button border radius
        ),
        minimumSize: Size(150.0, 40.0),
      ),
    );
  }
}
