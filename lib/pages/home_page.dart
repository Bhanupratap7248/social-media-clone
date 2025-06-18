import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/post_item.dart';
import 'package:flutter_application_1/components/toolbar.dart';
import 'package:flutter_application_1/config/app_icons.dart';
//import 'package:flutter_application_1/styles/app_colors.dart';
//import 'package:flutter_application_1/styles/app_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUserFromServer();
    return Scaffold(
      appBar: Toolbar(
          title:'flutter', 
        actions:[
          IconButton(onPressed: (){}, 
          icon: SvgPicture.asset(AppIcons.icLocations),
              ),
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
