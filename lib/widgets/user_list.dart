import 'package:flutter/material.dart';
import '../models/user_model.dart';

class UserList extends StatelessWidget {
  final List<UserModel> users;

  UserList({required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return Container(
          child: Column(
            children: [
              if (user.avatar != null)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(user.avatar!),
                ),
              Text(user.id.toString()),
              Text(user.email.toString()),
              Text(user.firstName.toString()),
              Text(user.lastName.toString()),
            ],
          ),
        );
      },
    );
  }
}
