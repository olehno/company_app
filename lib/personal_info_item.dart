import 'package:company_app/personal_info_data.dart';
import 'package:flutter/material.dart';

class PersonalInfoItem extends StatelessWidget {
  const PersonalInfoItem({super.key, required this.data});

  final PersonalInfoData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              data.icon,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(width: 8),
            Text(
              data.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        SizedBox(height: 5c),
        Text(
          data.value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
