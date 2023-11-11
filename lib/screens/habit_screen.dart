import 'package:flutter/material.dart';
import 'package:habit_app/services/chart_builder.dart';

class HabitScreen extends StatefulWidget {
  const HabitScreen({super.key});

  @override
  State<HabitScreen> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/HabitsPageBackground.jpg",
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
                            "Your Habits",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Use this to be inspired",
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
          Expanded(
            child: SizedBox(
              height: 513,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                children: const [
                  SizedBox(
                    height: 200,
                    child: LineChartSample1(),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    child: LineChartSample2(),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    child: LineChartSample3(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
