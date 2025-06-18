import 'package:flutter/material.dart';

import 'package:flutter_application_1/components/toolbar.dart';
import 'package:flutter_application_1/config/app_icons.dart';
import 'package:flutter_application_1/config/app_routs.dart';
import 'package:flutter_application_1/config/app_strings.dart';
import 'package:flutter_application_1/styles/app_text.dart';


enum ProfileMenu { editProfile, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
              onSelected: (value) {
                switch (value) {
                  case ProfileMenu.editProfile:
                    Navigator.of(context).pushNamed(AppRouts.editProfile);
                    break;
                  case ProfileMenu.logout:
                    //print('Logout');
                    break;
                  default:
                }
              },
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: ProfileMenu.editProfile,
                    child: Row(
                      children: [
                        // Icon(Icons.edit),
                        Text('Edit '),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: ProfileMenu.logout,
                    child: Text('Logout'),
                  ),
                ];
              },
              ),
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              AppIcons.icUser1,
              height: 50,
              width: 50,
            ),
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
                  Text(AppStrings.followers, style: AppText.subtitle3),
                ],
              ),
              SizedBox(width: 24),
              Column(
                children: [
                  Text('100', style: AppText.header2),
                  Text(AppStrings.posts, style: AppText.subtitle3),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                children: [
                  Text('650', style: AppText.header2),
                  Text(AppStrings.following, style: AppText.subtitle3),
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
