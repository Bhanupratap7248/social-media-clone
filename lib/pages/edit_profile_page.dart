import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/app_text_field.dart';
import 'package:flutter_application_1/components/toolbar.dart';
import 'package:flutter_application_1/config/app_strings.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.editProfile,
      ),
      body: Column(
        children: [
          AppTextField(hint: 'first name'),
          SizedBox(height: 10),
          AppTextField(hint: 'last name'),
          SizedBox(height: 10),
          AppTextField(hint: 'lcation'),
          SizedBox(height: 10),
          AppTextField(hint: 'password'),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
