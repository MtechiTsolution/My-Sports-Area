//
// import 'package:easy_stepper/easy_stepper.dart';
// import 'package:flutter/material.dart';
//
// class Tab_changer_acc extends StatefulWidget {
//   const Tab_changer_acc({Key? key}) : super(key: key);
//
//   @override
//   _Tab_changer_accState createState() => _Tab_changer_accState();
// }
//
// class _Tab_changer_accState extends State<Tab_changer_acc>
//     with SingleTickerProviderStateMixin {
//   int activeStep = 0;
//   final dashImages = [
//     'assets/1.png',
//     'assets/2.png',
//     'assets/3.png',
//     'assets/4.png',
//     'assets/5.png',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
//
//     return SafeArea(
//       child: Scaffold(
//         body: SafeArea(
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 EasyStepper(
//                   activeStep: activeStep,
//                   lineStyle: const LineStyle(
//                     lineLength: 50,
//                     lineType: LineType.normal,
//                     lineThickness: 3,
//                     lineSpace: 1,
//                     lineWidth: 10,
//                     unreachedLineType: LineType.dashed,
//                   ),
//                   stepShape: StepShape.rRectangle,
//                   stepBorderRadius: 15,
//                   borderThickness: 2,
//                   internalPadding: 10,
//                   padding: const EdgeInsetsDirectional.symmetric(
//                     horizontal: 30,
//                     vertical: 20,
//                   ),
//                   stepRadius: 28,
//                   finishedStepBorderColor: Colors.deepOrange,
//                   finishedStepTextColor: Colors.deepOrange,
//                   finishedStepBackgroundColor: Colors.deepOrange,
//                   activeStepIconColor: Colors.deepOrange,
//                   showLoadingAnimation: false,
//                   steps: [
//                     EasyStep(
//                       customStep: ClipRRect(
//                         borderRadius: BorderRadius.circular(15),
//                         child: Opacity(
//                           opacity: activeStep >= 0 ? 1 : 0.3,
//                           child: Image.asset('assets/1.png'),
//                         ),
//                       ),
//                       customTitle: const Text(
//                         'Dash 1',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     EasyStep(
//                       customStep: ClipRRect(
//                         borderRadius: BorderRadius.circular(15),
//                         child: Opacity(
//                           opacity: activeStep >= 1 ? 1 : 0.3,
//                           child: Image.asset('assets/2.png'),
//                         ),
//                       ),
//                       customTitle: const Text(
//                         'Dash 2',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     EasyStep(
//                       customStep: ClipRRect(
//                         borderRadius: BorderRadius.circular(15),
//                         child: Opacity(
//                           opacity: activeStep >= 2 ? 1 : 0.3,
//                           child: Image.asset('assets/3.png'),
//                         ),
//                       ),
//                       customTitle: const Text(
//                         'Dash 3',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     EasyStep(
//                       customStep: ClipRRect(
//                         borderRadius: BorderRadius.circular(15),
//                         child: Opacity(
//                           opacity: activeStep >= 3 ? 1 : 0.3,
//                           child: Image.asset('assets/images/logo.png'),
//                         ),
//                       ),
//                       customTitle: const Text(
//                         'Dash 4',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                     EasyStep(
//                       customStep: ClipRRect(
//                         borderRadius: BorderRadius.circular(15),
//                         child: Opacity(
//                           opacity: activeStep >= 4 ? 1 : 0.3,
//                           child: Image.asset('assets/5.png'),
//                         ),
//                       ),
//                       customTitle: const Text(
//                         'Dash 5',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ],
//                   onStepReached: (index) => setState(() => activeStep = index),
//                 ),
//                 SizedBox(
//                   height: 200,
//                   width: double.infinity,
//                   child: Column(
//                     children: [
//                       Image.asset(
//                         dashImages[activeStep],
//                         height: 150,
//                       ),
//                       const SizedBox(height: 5),
//                       Text('Dash ${activeStep + 1}')
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//



import 'package:easy_stepper/easy_stepper.dart';
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

class Tab_changer_acc extends StatefulWidget {
  const Tab_changer_acc({Key? key}) : super(key: key);

  @override
  _Tab_changer_accState createState() => _Tab_changer_accState();
}

class _Tab_changer_accState extends State<Tab_changer_acc>
    with SingleTickerProviderStateMixin {
  int activeStep = 0;

  final List<CustomStepWidget> customSteps = [
    CustomStepWidget(
      title: 'Player ',
      content: Playerinfo(),
      fixedIcon: Icons.star,
    ),
    CustomStepWidget(
      title: 'Skill ',
      content: Skill(),
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
          backgroundColor: isDarkMode ? AppColors.darkBackground : AppColors.pink,
          iconTheme: IconThemeData(
            color: isDarkMode ? AppColors.iconColorDark : Colors.white, // Set back arrow color based on mode
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
                      onStepReached: (index) => setState(() => activeStep = index),
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
}

class Playerinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.blue,
        child: Skill(),
      ),
    );
  }
}

class   Skill_info extends StatelessWidget {
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
