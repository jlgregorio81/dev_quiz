import 'package:dev_quiz/home/widgets/app_bar_widget.dart';
import 'package:dev_quiz/home/widgets/level_button_widget.dart';
import 'package:dev_quiz/home/widgets/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButtonWidget(label: 'Easy'),
                  LevelButtonWidget(label: 'Medium'),
                  LevelButtonWidget(label: 'Hard'),
                  LevelButtonWidget(label: 'Pro'),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
