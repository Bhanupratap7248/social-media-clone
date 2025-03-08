import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/user1.png',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  Text(
                    user,
                    style: AppText.subtitle2,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            'assets/image/ru.png',
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Monika rawat",
            style: AppText.subtitle2,
          ),
        ],
      ),
    );
  }
}
