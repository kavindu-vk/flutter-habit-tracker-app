import 'package:flutter/material.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/progressPageBackground.jpg",
                    height: 320,
                    width: MediaQuery.of(context).size.width,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 250, 0, 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Text(
                            "Hey Kavindu!",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Keep going champ!",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Top Habits This Week",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: const Column(
                children: [
                  ListTile(
                    leading: CircularProgressIndicator(
                      color: Colors.lightBlueAccent,
                      strokeWidth: 7.5,
                      backgroundColor: Color.fromARGB(255, 192, 170, 250),
                      value: 1,
                    ),
                    title: Text(
                      "Drinking Water",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "How good you've been at drinking water this week",
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
                    ),
                    trailing: Icon(Icons.local_drink),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircularProgressIndicator(
                      color: Colors.lightBlueAccent,
                      strokeWidth: 7.5,
                      backgroundColor: Color.fromARGB(255, 192, 170, 250),
                      value: 0.95,
                    ),
                    title: Text(
                      "Reading",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "How good you've been at reading  this week",
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
                    ),
                    trailing: Icon(Icons.book),
                  ),
                  Divider(),
                  ListTile(
                    leading: CircularProgressIndicator(
                      color: Colors.lightBlueAccent,
                      strokeWidth: 7.5,
                      backgroundColor: Color.fromARGB(255, 192, 170, 250),
                      value: 0.8,
                    ),
                    title: Text(
                      "Exercising",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "How good you've been at exercising this week",
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
                    ),
                    trailing: Icon(Icons.sports_gymnastics),
                  ),
                  Divider(),
                  ListTile(
                      leading: CircularProgressIndicator(
                        color: Colors.lightBlueAccent,
                        strokeWidth: 7.5,
                        backgroundColor: Color.fromARGB(255, 192, 170, 250),
                        value: 0.65,
                      ),
                      title: Text(
                        "Studying Spanish",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "How good you've been at Studying Spanish this week",
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 12),
                      ),
                      trailing: Icon(Icons.language)),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 15, 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Worst Habits This Week",
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: const Column(
                children: [
                  ListTile(
                      leading: CircularProgressIndicator(
                        color: Colors.lightBlueAccent,
                        strokeWidth: 7.5,
                        backgroundColor: Color.fromARGB(255, 192, 170, 250),
                        value: 0.12,
                      ),
                      title: Text(
                        "Programming",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "How bad you've been at coding this week",
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 12),
                      ),
                      trailing: Icon(Icons.computer)),
                  Divider(),
                  ListTile(
                      leading: CircularProgressIndicator(
                        color: Colors.lightBlueAccent,
                        strokeWidth: 7.5,
                        backgroundColor: Color.fromARGB(255, 192, 170, 250),
                        value: 0.25,
                      ),
                      title: Text(
                        "Journaling",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "How bad you've been at journaling this week",
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 12),
                      ),
                      trailing: Icon(Icons.edit)),
                  Divider(),
                  ListTile(
                      leading: CircularProgressIndicator(
                        color: Colors.lightBlueAccent,
                        strokeWidth: 7.5,
                        backgroundColor: Color.fromARGB(255, 192, 170, 250),
                        value: 0.33,
                      ),
                      title: Text(
                        "Cleaning",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "How bad you've been at cleaning this week",
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 12),
                      ),
                      trailing: Icon(Icons.cleaning_services_outlined)),
                  Divider(),
                  ListTile(
                      leading: CircularProgressIndicator(
                        color: Colors.lightBlueAccent,
                        strokeWidth: 7.5,
                        backgroundColor: Color.fromARGB(255, 192, 170, 250),
                        value: 0.33,
                      ),
                      title: Text(
                        "Waking Up Early",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "How bad you've been at waking up early this week",
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 12),
                      ),
                      trailing: Icon(Icons.language)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
