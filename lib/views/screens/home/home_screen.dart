import 'package:flutter/material.dart';

import 'package:flutter_app/views/widget/post_card.dart';
import 'package:flutter_app/views/widget/image_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Image.asset(
            'assets/images/logo.png',
            width: size.width * 0.33,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.messenger_outline_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          // Use Column for vertical stacking
          children: [
            // Banner image section
            Container(
                child: ImageBannerWidget(
              imageUrls: myImageUrls,
              height: 150,
            )),
            SizedBox(
              height: 16,
            ),
            // List of postcards section
            Expanded(
              // Use Expanded for flexible list height
              child: ListView.separated(
                // scrollDirection: Axis.horizontal, // Optional for horizontal scrolling
                itemCount: 10,
                itemBuilder: (context, index) => postCard(size),
                separatorBuilder: (context, index) => SizedBox(height: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<String> myImageUrls = [
  'https://plus.unsplash.com/premium_photo-1681582960531-7b5de57fb276?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1707327956851-30a531b70cda?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1686278851694-d1ab44635d03?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyN3x8fGVufDB8fHx8fA%3D%3D',
];
