import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/user1.png',
            height: 50,
            width: 50,
          ),
          SizedBox(height: 24),
          Text('Monika Rawat', style: AppText.header2),
          SizedBox(height: 12),
          Text('Mathura, India', style: AppText.subtitle1),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('300', style: AppText.header2),
                  Text('followers', style: AppText.subtitle3),
                ],
              ),
              SizedBox(width: 24),
              Column(
                children: [
                  Text('100', style: AppText.header2),
                  Text('Post', style: AppText.subtitle3),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                children: [
                  Text('650', style: AppText.header2),
                  Text('Following', style: AppText.subtitle3),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 24,
          )
        ],
      ),
    );
  }
}
