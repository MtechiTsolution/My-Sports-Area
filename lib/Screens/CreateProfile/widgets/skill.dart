import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_sports_app/Screens/Authentication/widget/customtextfiled.dart';
import 'package:my_sports_app/Screens/CreateProfile/widgets/Customdropdown.dart';
import 'package:my_sports_app/Screens/CreateProfile/widgets/sabwidgets/_addskill.dart';
import 'package:my_sports_app/Utils/pref_utils.dart';
import 'package:my_sports_app/Utils/them.dart';
import 'package:my_sports_app/models/Player.dart';
import 'package:my_sports_app/models/Position.dart';
import 'package:my_sports_app/models/Sport.dart';
import 'package:my_sports_app/models/User.dart';
import 'package:my_sports_app/providers/PlayerProvider.dart';
import 'package:my_sports_app/providers/PositionProvider.dart';
import 'package:my_sports_app/providers/SportProvider.dart';
import 'package:my_sports_app/widgets/ios_dialogue.dart';
import 'package:provider/provider.dart';

import '../../../Utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../Authentication/player_auth/tabchanger_create_ac.dart';

class Skill extends StatefulWidget {
  final nextStep;
  const Skill(this.nextStep, {super.key});

  @override
  State<Skill> createState() => _SkillState();

  void onAddSkill() {}
}

class _SkillState extends State<Skill> {
  final _formKey = GlobalKey<FormState>();
  Sport? selectedGame; // Declare the selectedGame variable
  // String? selectRank;
  // String? selectskilllevel;
  Position? positioningame;
  List<Sport> games = [];

  List<Position> position = [];
  // List<String> rank = ['Senior', 'Junior', 'Beginner'];
  // List<String> level = ['Level 1', 'Level 2', 'Level 3'];

  // List<String> descriptions = [];
  // List<SkillData> skills = [];
  // TextEditingController skillNameController = TextEditingController();
  // TextEditingController skillLevelController = TextEditingController();
  // TextEditingController skillDescriptionController = TextEditingController();
  // bool maleChecked = false;
  // bool femaleChecked = false;
  // String? imagePath;
  // String? selectedGame;
  TextEditingController jerseyNumberController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  // List<String> games = ['Football', 'Hand ball', 'Basket ball', 'Rug bay'];
  // String? selectedGameError;
  DateTime? selectedDate = DateTime.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  loadgameData() async {
    games = games.isEmpty
        ? await SportProvider().getSports(PrefUtils.token)
        : games;
  }

  loadPosition(sportId) async {
    position = await Provider.of<PositionProvider>(context, listen: false)
        .getPositions(PrefUtils.token, sportId);
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor:
                Theme.of(context).colorScheme.background, // Updated line
            body: FutureBuilder(
                future: loadgameData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting ||
                      snapshot.hasError) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                          child: Container(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.2),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding:
                                      getPadding(left: 0, top: 5, right: 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                            left: 0, top: 10, bottom: 5),
                                        child: Text(
                                          "Joining Date",
                                          style:
                                              labelText.Lebl_Text(isDarkMode),
                                        ),
                                      ),
                                      Text(
                                        selectedDate != null
                                            ? DateFormat('yyyy-MM-dd')
                                                .format(selectedDate!)
                                            : 'No date selected',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    getPadding(left: 15, top: 5, right: 18),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                          left: 7, top: 10, bottom: 5),
                                      child: Text(
                                        "Please select a game",
                                        style: labelText.Lebl_Text(isDarkMode),
                                      ),
                                    ),
                                    CustomDropDownField(
                                      selectvalue: selectedGame,
                                      hintText: 'Select a game',
                                      items: games,
                                      onChanged: (value) {
                                        print('check: ${value.id}');
                                        loadPosition(value.id);
                                        selectedGame = value;
                                      },
                                    )
                                  ],
                                ),
                              ),
                              //Position in game
                              Padding(
                                padding:
                                    getPadding(left: 15, top: 5, right: 18),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                          left: 7, top: 10, bottom: 5),
                                      child: Text(
                                        "Position in game",
                                        style: labelText.Lebl_Text(isDarkMode),
                                      ),
                                    ),
                                    Consumer<PositionProvider>(
                                      builder: (cont, positionPro, _) {
                                        print("object running");
                                        positioningame =
                                            positionPro.positions.length != 0
                                                ? positionPro.positions.first
                                                : positioningame;
                                        return CustomDropDownField(
                                          selectvalue: positioningame,
                                          hintText: 'Select a position',
                                          items: positionPro.positions,
                                          onChanged: (value) {
                                            // setState(() {
                                            positioningame = value;
                                            // });
                                          },
                                        );
                                      },
                                    )
                                  ],
                                ),
                              ),
                              //Rank in game
                              // Padding(
                              //   padding: getPadding(left: 15, top: 5, right: 18),
                              //   child: Column(
                              //     crossAxisAlignment: CrossAxisAlignment.start,
                              //     mainAxisAlignment: MainAxisAlignment.start,
                              //     children: [
                              //       Padding(
                              //         padding:
                              //             getPadding(left: 7, top: 10, bottom: 5),
                              //         child: Text(
                              //           "Rank in game",
                              //           style: labelText.Lebl_Text(isDarkMode),
                              //         ),
                              //       ),
                              //       DropdownButtonFormField<String>(
                              //         value: selectRank,
                              //         onChanged: (value) {
                              //           setState(() {
                              //             selectRank = value;
                              //           });
                              //         },
                              //         items: rank.map<DropdownMenuItem<String>>(
                              //             (String game) {
                              //           return DropdownMenuItem<String>(
                              //             value: game,
                              //             child: Text(game),
                              //           );
                              //         }).toList(),
                              //         decoration: InputDecoration(
                              //           contentPadding: EdgeInsets.all(15),
                              //           hintText: "Select rank",
                              //           hintStyle: TextStyle(
                              //               fontSize: 16, color: Colors.grey),
                              //           border: OutlineInputBorder(
                              //             borderRadius:
                              //                 BorderRadius.all(Radius.circular(8)),
                              //             borderSide:
                              //                 BorderSide(color: AppColors.pink),
                              //           ),
                              //           enabledBorder: OutlineInputBorder(
                              //             borderRadius:
                              //                 BorderRadius.all(Radius.circular(8)),
                              //             borderSide:
                              //                 BorderSide(color: AppColors.pink),
                              //           ),
                              //           focusedBorder: OutlineInputBorder(
                              //             borderRadius:
                              //                 BorderRadius.all(Radius.circular(8)),
                              //             borderSide:
                              //                 BorderSide(color: AppColors.pink),
                              //           ),
                              //         ),
                              //         validator: (value) {
                              //           if (value == null || value.isEmpty) {
                              //             return "Please select a rank";
                              //           }

                              //           // You can add additional validation if needed

                              //           return null;
                              //         },
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              // // number of goal
                              // Padding(
                              //   padding: getPadding(left: 15, top: 5, right: 18),
                              //   child: Column(
                              //     crossAxisAlignment: CrossAxisAlignment.start,
                              //     mainAxisAlignment: MainAxisAlignment.start,
                              //     children: [
                              //       Padding(
                              //         padding:
                              //             getPadding(left: 7, top: 10, bottom: 5),
                              //         child: Text(
                              //           "Number of goals",
                              //           style: labelText.Lebl_Text(isDarkMode),
                              //         ),
                              //       ),
                              //       CustomTextField(
                              //         hintText: "Enter Number of Goals",
                              //         isDarkMode: isDarkMode,
                              //         keyboardType: TextInputType.number,
                              //       )
                              //     ],
                              //   ),
                              // ),
                              // //cards yellow others

                              // Padding(
                              //   padding: getPadding(left: 15, top: 5, right: 18),
                              //   child: Column(
                              //     crossAxisAlignment: CrossAxisAlignment.start,
                              //     mainAxisAlignment: MainAxisAlignment.start,
                              //     children: [
                              //       Row(
                              //         children: [
                              //           Expanded(
                              //             child: Padding(
                              //               padding: getPadding(
                              //                   left: 7, top: 10, bottom: 5),
                              //               child: Text(
                              //                 "Yellow cards",
                              //                 style:
                              //                     labelText.Lebl_Text(isDarkMode),
                              //               ),
                              //             ),
                              //           ),
                              //           Expanded(
                              //             child: Padding(
                              //               padding: getPadding(
                              //                   left: 7, top: 10, bottom: 5),
                              //               child: Text(
                              //                 "Red cards",
                              //                 style:
                              //                     labelText.Lebl_Text(isDarkMode),
                              //               ),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //       Row(
                              //         children: [
                              //           Expanded(
                              //               child: Padding(
                              //             padding: EdgeInsets.only(right: 5),
                              //             child: CustomTextField(
                              //               hintText: "No.of Yellow cards",
                              //               isDarkMode: isDarkMode,
                              //               keyboardType: TextInputType.number,
                              //             ),
                              //           )),
                              //           Expanded(
                              //             child: Padding(
                              //               padding: EdgeInsets.only(right: 5),
                              //               child: CustomTextField(
                              //                 hintText: "No.of Red cards",
                              //                 isDarkMode: isDarkMode,
                              //                 keyboardType: TextInputType.number,
                              //               ),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        getPadding(left: 15, top: 5, right: 18),
                                    child: Text(
                                      "Jersey Number",
                                      style: labelText.Lebl_Text(isDarkMode),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        getPadding(left: 15, top: 5, right: 18),
                                    child: CustomTextField(
                                      hintText: "Enter Jersey Number",
                                      isDarkMode: isDarkMode,
                                      controller: jerseyNumberController,
                                      keyboardType: TextInputType.number,
                                      onChanged: (value) {},
                                      // validator: (value) {
                                      //   if (value == null || value.isEmpty) {
                                      //     return "Please enter valid text";
                                      //   }
                                      //   return null;
                                      // },
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        getPadding(left: 15, top: 5, right: 18),
                                    child: Text(
                                      "Measurements",
                                      style: labelText.Lebl_Text(isDarkMode),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        getPadding(left: 15, top: 5, right: 18),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            autofocus: false,
                                            controller: heightController,
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(
                                                  screenWidth * 0.03),
                                              hintText: "height",
                                              hintStyle: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8)),
                                                borderSide: BorderSide(
                                                    color: AppColors.pink),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8)),
                                                borderSide: BorderSide(
                                                    color: AppColors.pink),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8)),
                                                borderSide: BorderSide(
                                                    color: AppColors.pink),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                            onChanged: (value) {},
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                        SizedBox(width: screenWidth * 0.02),
                                        Expanded(
                                          child: TextFormField(
                                            autofocus: false,
                                            controller: weightController,
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(
                                                  screenWidth * 0.03),
                                              hintText: "Weight",
                                              hintStyle: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.grey),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8)),
                                                borderSide: BorderSide(
                                                    color: AppColors.pink),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8)),
                                                borderSide: BorderSide(
                                                    color: AppColors.pink),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8)),
                                                borderSide: BorderSide(
                                                    color: AppColors.pink),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                            onChanged: (value) {},
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ElevatedButton(
                                          onPressed: onTapNext,
                                          child: Text("save & Next")),
                                    ),
                                  )
                                ],
                              ),
                              //Skill name
                            ]),
                      )));
                })));
  }

  void onTapNext() async {
    if (_formKey.currentState!.validate()) {
      showIosDialoge(context);
      _formKey.currentState!.save();
      User? user = PrefUtils().getUser();
      Player player = Player(
          userId: user!.id.toString(),
          sportId: selectedGame!.id.toString(),
          positionId: positioningame!.id.toString(),
          height: heightController.text,
          weight: weightController.text,
          jerseyNumber: jerseyNumberController.text);
      var res = await PlayerProvider().addPlayer(player, PrefUtils.token);
      Navigator.of(context).pop();
      widget.nextStep();
      if (res) {}
    }
  }
}

class SkillData {
  String name;
  String? level; // Assuming level can be nullable, modify as needed
  String? skilldesc;

  SkillData({required this.name, this.level, this.skilldesc});
}
