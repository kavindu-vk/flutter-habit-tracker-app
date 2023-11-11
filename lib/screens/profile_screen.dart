import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.fromLTRB(15, 50, 15, 20),
        children: [
          const CircleAvatar(
            radius: 150,
            backgroundColor: Colors.blueAccent,
            backgroundImage: NetworkImage(
                "https://drive.google.com/uc?id=1L9TFyN6PJ_YI5gt6RUSb5c4-pnXBu7aN",
                scale: 1),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, bottom: 10),
            child: Center(
              child: Text(
                "Kavindu Vihanga",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Center(
            child: Text(
              "Lovely days don’t come to you, you should walk to them!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Divider(),
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text("My Subscription Info"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.info),
            title: Text("About This App"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const Divider(),
          Center(
            child: TextButton(
                onPressed: () {
                  print("User logged out");
                },
                child: const Text(
                  "Log out",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
