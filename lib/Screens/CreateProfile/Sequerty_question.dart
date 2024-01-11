import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../localization/en_us/en_us_translations.dart';
import '../../theme/theme_helper.dart';
import 'My_interests.dart';

class SecurityQuestionScreen extends StatefulWidget {
  @override
  _SecurityQuestionScreenState createState() => _SecurityQuestionScreenState();
}

class _SecurityQuestionScreenState extends State<SecurityQuestionScreen> {
  List<String> selectedQuestions = [];

  void onQuestionSelected(String question) {
    setState(() {
      if (selectedQuestions.contains(question)) {
        selectedQuestions.remove(question);
      } else {
        selectedQuestions.add(question);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Security Question',
      //       style: theme.textTheme.headlineMedium
      //     //style: TextStyle(color: Colors.pink),
      //   ),
      //   backgroundColor: Colors.white, // Change as needed
      // ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Add", style: theme.textTheme.headlineMedium),
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 60),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Security Question",
                      style: theme.textTheme.headlineMedium),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Add Questions:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SecurityQuestionItem(
                  question: 'What is your favorite color?',
                  onSelectedChanged: onQuestionSelected,
                  isSelected: selectedQuestions
                      .contains('What is your favorite color?'),
                ),
                SizedBox(
                  height: 10,
                ),
                SecurityQuestionItem(
                  question: 'What is your pet\'s name?',
                  onSelectedChanged: onQuestionSelected,
                  isSelected:
                      selectedQuestions.contains('What is your pet\'s name?'),
                ),
                SizedBox(
                  height: 10,
                ),
                SecurityQuestionItem(
                  question: 'Where were you born?',
                  onSelectedChanged: onQuestionSelected,
                  isSelected:
                      selectedQuestions.contains('Where were you born?'),
                ),
                SizedBox(
                  height: 10,
                ),
                SecurityQuestionItem(
                  question: 'Who is your favorite author?',
                  onSelectedChanged: onQuestionSelected,
                  isSelected: selectedQuestions
                      .contains('Who is your favorite author?'),
                ),
                SizedBox(
                  height: 10,
                ),
                SecurityQuestionItem(
                  question: 'What is your mother\'s maiden name?',
                  onSelectedChanged: onQuestionSelected,
                  isSelected: selectedQuestions
                      .contains('What is your mother\'s maiden name?'),
                ),
              ],
            ),
            if (selectedQuestions.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  Text(
                    'Please set a Security Question for you secure use ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: selectedQuestions.length,
                    itemBuilder: (context, index) {
                      final selectedQuestion = selectedQuestions[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(selectedQuestion),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your answer',
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                // Handle "Forget Question" click
                // You can add your logic here
              },
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Forget Question',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Align(
              alignment: Alignment.topRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => My_Interests()));
                  // Handle "NEXT" button click
                  // You can add your logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.pink, // Set the background color to pink
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(18.0), // Set the corner radius
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 18.0, right: 18, top: 5, bottom: 5),
                  child: Text('NEXT'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SecurityQuestionItem extends StatelessWidget {
  final String question;
  final Function(String) onSelectedChanged;
  final bool isSelected;

  SecurityQuestionItem({
    required this.question,
    required this.onSelectedChanged,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onSelectedChanged(question);
      },
      child: Row(
        children: [
          CustomCheckbox(
            value: isSelected,
            onChanged: (value) {
              onSelectedChanged(question);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              question,
              style: TextStyle(
                color: Colors.black, // Customize text color as needed
                fontSize: 16.0, // Customize text size as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  CustomCheckbox({
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
        width: 24.0,
        height: 24.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
          ),
          color: value ? Colors.pink : Colors.transparent,
        ),
        child: Center(
          child: Icon(
            Icons.check,
            size: 16.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
