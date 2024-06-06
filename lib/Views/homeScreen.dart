import 'package:flutter/material.dart';

import 'course_1.dart';
import 'course_2.dart';
import 'course_3.dart';
import 'course_4.dart';
import 'course_5.dart';
import 'course_6.dart';
import 'course_7.dart';
import 'course_8.dart';
import 'course_9.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> myCourses = [
    'Database Systems',
    'Mobile Application Development',
    'Computational Modeling'





  ];

  Color black = const Color(0xFF000000).withOpacity(1);
  Color cardColor = const Color(0xFF000000).withOpacity(1);
  Color textColor =  Color(0xffff8c25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 28.0),
          child: Center(child: Text('EASY STUDY DASHBOARD')),
        ),
        backgroundColor:  Color(0xffff8c25),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16.0),
        itemCount: myCourses.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: _buildCourseItem(myCourses[index]),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 16.0),
      ),
    );
  }

  Widget _buildCourseItem(String title) {
    return GestureDetector(
      onTap: () {
        if (title == 'Computational Modeling') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ComputationalModeling()));
        } else if (title == 'Calculus') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Calculus()));
        } else if (title == 'Database Systems') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const DatabaseSystems()));
        }else if (title == 'Statistics') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Statistics()));
        }else if (title == 'Mobile Application Development') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MobileApplicationDevelopment()));
        }else if (title == 'Linear Algebra') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const LinearAlgebra()));
        }else if (title == 'Intro To Programming') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const IntroToProgramming()));
        }else if (title == 'Advanced Math Structures') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AdvancedMathStructures()));
        }else if (title == 'Data Communications and Networking') {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const DataCommunicationAndNetworking()));
        }





      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              title.toUpperCase(),
              style: TextStyle(
                color: Color(0xffff8c25),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

