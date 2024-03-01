import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/CreateProfile/widgets/skill.dart';
import 'package:my_sports_app/Utils/them.dart';

class CustomStepWidget {
  final Widget content;
  final String title;
  final IconData fixedIcon;

  CustomStepWidget({
    required this.content,
    required this.title,
    required this.fixedIcon,
  });
}

class TestMyApp extends StatefulWidget {
  const TestMyApp({Key? key}) : super(key: key);

  @override
  State<TestMyApp> createState() => _TestMyAppState();
}

class _TestMyAppState extends State<TestMyApp> {
  int activeStep = 0;

  List<CustomStepWidget> customSteps = [];

  @override
  void initState() {
    // TODO: implement initState
    customSteps = [
      CustomStepWidget(
        title: 'Player ',
        content: Skill(increaseProgress),
        fixedIcon: Icons.star,
      ),
      CustomStepWidget(
        title: 'Skill ',
        content: Container(
          child: Center(
            child: ElevatedButton(
                onPressed: increaseProgress, child: Text("next")),
          ),
        ),
        fixedIcon: Icons.star,
      ),
      CustomStepWidget(
        title: 'Injuries',
        content: Container(
          child: Center(
            child: ElevatedButton(
                onPressed: increaseProgress, child: Text("next")),
          ),
        ),
        fixedIcon: Icons.access_time,
      ),
      CustomStepWidget(
        title: 'Achievement',
        content: Container(
          child: Center(
            child: ElevatedButton(
                onPressed: increaseProgress, child: Text("next")),
          ),
        ),
        fixedIcon: Icons.person,
      ),
    ];
    super.initState();
  }

  void increaseProgress() {
    // if (progress < 1) {
    setState(() {
      activeStep++;
    });
    // } else {
    //   setState(() => progress = 0);
    // }
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          customSteps[activeStep].title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: CustomTextheading.headlineMedium(isDarkMode),
        ),
        centerTitle: true,
        backgroundColor: isDarkMode ? AppColors.darkBackground : AppColors.pink,
        iconTheme: IconThemeData(
          color: isDarkMode
              ? AppColors.iconColorDark
              : Colors.white, // Set back arrow color based on mode
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: EasyStepper(
                lineStyle: const LineStyle(
                  lineType: LineType.normal,
                ),
                enableStepTapping: false,
                activeStep: activeStep,
                direction: Axis.horizontal,
                unreachedStepIconColor: Colors.white,
                unreachedStepBorderColor: Colors.black54,
                finishedStepBackgroundColor: Colors.deepPurple,
                unreachedStepBackgroundColor: Colors.deepOrange,
                showTitle: false,
                onStepReached: (index) => setState(() => activeStep = index),
                steps: customSteps
                    .map((step) => EasyStep(
                          customStep: YourCustomStepWidget(
                            fixedIcon: step.fixedIcon,
                          ),
                        ))
                    .toList(),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.85,
              width: double.infinity,
              child: customSteps[activeStep].content,
            ),
          ],
        ),
      ),
    );
  }
}

class YourCustomStepWidget extends StatelessWidget {
  final IconData fixedIcon;

  const YourCustomStepWidget({required this.fixedIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        fixedIcon,
        size: 32,
        color: AppColors.darkLabelColor,
      ),
    );
  }
}
