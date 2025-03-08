import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/post_item.dart';
import 'package:flutter_application_1/styles/app_colors.dart';
import 'package:flutter_application_1/styles/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUserFromServer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 15,
        centerTitle: false,
        title: Text(
          'Users',
        ),
        actions: [
          Icon(Icons.location_on_outlined, color: Colors.white),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 20,
          );
        },
        itemCount: users.length,
      ),
    );
  }

  mockUserFromServer() {
    for (int i = 0; i < 300; i++) {
      users.add('User number $i');
    }
    return users;
  }
}
