import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/app_text_field.dart';
import 'package:flutter_application_1/components/toolbar.dart';
import 'package:flutter_application_1/config/app_strings.dart';
import 'package:flutter_application_1/components/user_avatar.dart';
import 'package:flutter_application_1/styles/app_colors.dart';


enum Gender{none,male,female,other}

class EditProfilePage extends StatefulWidget {
   EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
   var gender = Gender.none; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.editProfile,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: UserAvatar(
                      size: 500,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 10,
                          ))),
                ],
              ),
              SizedBox(height: 50),
              AppTextField(hint: AppStrings.firstName),
              SizedBox(height: 10),
              AppTextField(hint: AppStrings.lastName),
              SizedBox(height: 10),
              AppTextField(hint: AppStrings.phone),
              SizedBox(height: 10),
              AppTextField(hint: AppStrings.location),
              SizedBox(height: 10),
              AppTextField(hint: AppStrings.birthday),
              
            ],
          ),
        ),
      ),
    );
  }
}
