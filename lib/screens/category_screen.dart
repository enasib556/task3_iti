import 'package:flutter/material.dart';
import 'package:quiz_app_iti/widgets/category_card.dart';
import 'package:quiz_app_iti/screens/question_screen.dart'; // تأكد من المسار الصحيح

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key});

  final List<Map<String, dynamic>> data = [
    {'name': "  Iq Quiz", 'color': Colors.red},
    {'name': "  Sport Quiz", 'color': const Color.fromARGB(255, 242, 240, 240)},
    {'name': "  History Quiz", 'color': Colors.green}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (int i = 0; i < data.length; i++)
            Expanded(
              child: CategoryCard(
                quizName: data[i]['name'],
                quizColor: data[i]['color'],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuestionScreen(),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
