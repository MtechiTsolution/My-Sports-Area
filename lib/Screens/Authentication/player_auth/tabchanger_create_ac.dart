import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:my_sports_app/Screens/CreateProfile/widgets/skill.dart';
import 'package:my_sports_app/Utils/pref_utils.dart';
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

class Tab_changer_acc extends StatefulWidget {
  const Tab_changer_acc({Key? key}) : super(key: key);

  @override
  _Tab_changer_accState createState() => _Tab_changer_accState();
}

class _Tab_changer_accState extends State<Tab_changer_acc>
    with SingleTickerProviderStateMixin {
  int activeStep = 0;

  List<CustomStepWidget> customSteps = [];

  @override
  void initState() {
    // TODO: implement initState
    customSteps = [
      CustomStepWidget(
        title: 'Player ',
        content: Playerinfo(nextStep),
        fixedIcon: Icons.star,
      ),
      CustomStepWidget(
        title: 'Skill ',
        content: Skill(nextStep),
        fixedIcon: Icons.star,
      ),
      CustomStepWidget(
        title: 'Injuries',
        content: Achievement(),
        fixedIcon: Icons.access_time,
      ),
      CustomStepWidget(
        title: 'Achievement',
        content: Injuries(),
        fixedIcon: Icons.person,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            customSteps[activeStep].title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextheading.headlineMedium(isDarkMode),
          ),
          centerTitle: true,
          backgroundColor:
              isDarkMode ? AppColors.darkBackground : AppColors.pink,
          iconTheme: IconThemeData(
            color: isDarkMode
                ? AppColors.iconColorDark
                : Colors.white, // Set back arrow color based on mode
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: isDarkMode ? AppColors.darkBackground : AppColors.pink,
                  child: SizedBox(
                    height: 90,
                    child: EasyStepper(
                      activeStep: activeStep,
                      lineStyle: const LineStyle(
                        lineLength: 40,
                        lineType: LineType.normal,
                        lineThickness: 2,
                        activeLineColor: AppColors.white,
                        finishedLineColor: AppColors.white,
                        unreachedLineColor: AppColors.black,
                        lineSpace: 1,
                        lineWidth: 4,
                        unreachedLineType: LineType.dashed,
                      ),
                      stepShape: StepShape.rRectangle,
                      stepBorderRadius: 15,
                      borderThickness: 1,
                      internalPadding: 5,
                      padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      stepRadius: 24,
                      finishedStepBorderColor: AppColors.white,
                      finishedStepTextColor: AppColors.pink,
                      finishedStepBackgroundColor: AppColors.white,
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
                      onStepReached: (index) =>
                          setState(() => activeStep = index),
                    ),
                  ),
                ),
                Container(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.9,
                    width: double.infinity,
                    child: Column(
                      children: [
                        // Text(customSteps[activeStep].title, style: CustomTextheading.headlineMedium(isDarkMode),),
                        // const SizedBox(height: 0),
                        customSteps[activeStep].content,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  nextStep() {
    setState(() {
      activeStep++;
    });
  }
}

class Playerinfo extends StatelessWidget {
  final nextStep;
  Playerinfo(this.nextStep);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue,
        child: Skill(nextStep),
      ),
    );
  }
}

class Skill_info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}

class Achievement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
    );
  }
}

class Injuries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
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
