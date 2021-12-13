 import 'package:bmi_calculator/models/user/user_model.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {

  List<UserModel> users=[
    UserModel(id: 2, name: 'Mostafa Seliem', phone: "01010134487"),
    UserModel(id: 3, name: 'Mostafa Fattoh', phone: "01010134487"),
    UserModel(id: 4, name: 'Mostafa mohamed', phone: "01010134487"),
    UserModel(id: 5, name: 'Mostafa ali', phone: "01010134487"),
    UserModel(id: 6, name: 'Mostafa kamel', phone: "01010134487"),
    UserModel(id: 7, name: 'Mostafa Ashraf', phone: "01010134487"),
    UserModel(id: 8, name: 'Mostafa moaaz', phone: "01010134487"),
    UserModel(id: 6, name: 'Mostafa kamel', phone: "01010134487"),
    UserModel(id: 7, name: 'Mostafa Ashraf', phone: "01010134487"),
    UserModel(id: 8, name: 'Mostafa moaaz', phone: "01010134487"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(itemBuilder: (context,index)=>BuildUserItem(users[index]), separatorBuilder: (context,index)=> Padding(
        padding: const EdgeInsetsDirectional.only(start: 20),
        child: Container(width: double.infinity,height: 1.0,color: Colors.grey,),
      ), itemCount: users.length),
    );
  }

  Widget BuildUserItem(UserModel user){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CircleAvatar(
            radius: 25,
            child: Text(
              '${user.id}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                user.phone,
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
