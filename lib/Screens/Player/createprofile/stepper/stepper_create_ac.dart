import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/Player/createprofile/stepper/skill.dart';
import 'package:my_sports_app/Utils/them.dart';
import 'Achievement.dart';
import 'injuries.dart';
import 'player_info.dart';

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

class stepper_acc extends StatefulWidget {
  const stepper_acc({Key? key}) : super(key: key);

  @override
  _stepper_accState createState() => _stepper_accState();
}

class _stepper_accState extends State<stepper_acc>
    with SingleTickerProviderStateMixin {
  int activeStep = 0;

  final List<CustomStepWidget> customSteps = [
    CustomStepWidget(
      title: 'Player ',
      content: PlayerInfo(),
      fixedIcon: Icons.person_outline_rounded,
    ),
    CustomStepWidget(
      title: 'Skill ',
      content: SkillInfo(),
      fixedIcon: Icons.star,
    ),
    CustomStepWidget(
      title: 'Achievement',
      content: Achievement(),
      fixedIcon: Icons.stadium_rounded,
    ),
    CustomStepWidget(
      title: 'Injuries',
      content: Injuries(),
      fixedIcon: Icons.personal_injury,
    ),
  ];

// Remaining implementation...



  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true, // Set this property to true
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
            color: isDarkMode ? AppColors.iconColorDark : Colors.white, // Set back arrow color based on mode
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: isDarkMode ? AppColors.darkBackground : AppColors.white,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: EasyStepper(
                    activeStep: activeStep,
                    lineStyle: const LineStyle(
                      lineLength: 40,
                      lineType: LineType.normal,
                      lineThickness: 2,
                      activeLineColor: AppColors.darkLabelColor,
                      finishedLineColor: AppColors.black,
                      unreachedLineColor: AppColors.black,
                      lineSpace: 1,
                      lineWidth: 4,

                      unreachedLineType: LineType.dashed,
                    ),
                    stepShape: StepShape.rRectangle,
                    stepBorderRadius: 10,
                    borderThickness: 1,
                    internalPadding: 5,
                    padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    stepRadius: 24,
                    finishedStepBorderColor: AppColors.pink,
                    finishedStepTextColor: AppColors.pink,
                    finishedStepBackgroundColor: AppColors.pink,
                    activeStepIconColor: AppColors.white,
                    showLoadingAnimation: true,
                    steps: customSteps
                        .map((step) => EasyStep(
                      customStep: YourCustomStepWidget(
                        fixedIcon: step.fixedIcon,
                      ),
                      // customTitle: Row(
                      //   children: [
                      //     Icon(step.fixedIcon),
                      //     SizedBox(width: 8),
                      //     Text(
                      //       step.title,
                      //       textAlign: TextAlign.center,
                      //     ),
                      //   ],
                      // ),
                    ))
                        .toList(),
                    onStepReached: (index) => setState(() => activeStep = index),
                  ),
                ),
              ),

              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: double.infinity,
                  child: Column(
                    children: [
                      // Text(customSteps[activeStep].title, style: CustomTextheading.headlineMedium(isDarkMode),),
                      // const SizedBox(height: 0),
                      Expanded(child: customSteps[activeStep].content),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}

class PlayerInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.8,
      color: Colors.blue,
      child: Column(
        children: [
          Expanded(child: Player_info()),
        ],
      ),
    );
  }
}

class SkillInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.8,
      color: Colors.blue,
      child: Column(
        children: [
          Expanded(child:Skill_player()),
        ],
      ),
    );
  }
}

class Achievement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Achievement_player(),
    );
  }
}

class Injuries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: InjuriesScreen(),
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
