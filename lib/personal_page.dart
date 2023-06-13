import 'package:company_app/personal_info_data.dart';
import 'package:company_app/personal_info_item.dart';
import 'package:flutter/material.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({super.key});
final items = const [
  PersonalInfoData(title: "Position", icon: Icons.work_outline, value: "Flutter developer"),
  PersonalInfoData(title: "Phone", icon: Icons.phone, value: "+371 28345007"),
  PersonalInfoData(title: "Hobby", icon: Icons.favorite_border, value: "Cycling"),
  PersonalInfoData(title: "Email", icon: Icons.email, value: "user@chi.lv"),
];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kelly Williams",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cat_November_2010-1a.jpg/1200px-Cat_November_2010-1a.jpg",
            fit: BoxFit.cover,
            width: size.width,
            height: size.height,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: Colors.white,
              ),
              // height: 300,
              width: size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 32,
                      ),
                      child: Text(
                        "Kelly Williams",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 16),
                        Expanded(child: PersonalInfoItem(data: items[0])),
                        Expanded(child: PersonalInfoItem(data: items[1])),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        SizedBox(width: 16),
                        Expanded(child: PersonalInfoItem(data: items[2])),
                        Expanded(child: PersonalInfoItem(data: items[3])),
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
