import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/app_icons.dart';

class UserAvatar extends StatelessWidget {
  final double size;

  const UserAvatar({super.key, this.size = 50});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        AppIcons.icUser1,
        height: 50,
        width: 50,
      ),
    );
  }
}
