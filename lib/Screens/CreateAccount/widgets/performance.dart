import 'package:flutter/material.dart';

import '../../../Utils/size_utils.dart';

import '../../../theme/theme_helper.dart';

class TabPerformance extends StatefulWidget {
  const TabPerformance({super.key});

  @override
  State<TabPerformance> createState() => _TabPerformanceState();
}

class _TabPerformanceState extends State<TabPerformance> {
  String? selectedGame; // Declare the selectedGame variable
  String? selectRank;
  String? selectskilllevel;

  List<String> games = ['Forward', 'Gol keeper', 'Striker'];
  List<String> rank = ['Senior', 'Junior', 'Beginner'];
  List<String> level = ['Level 1', 'Level 2', 'Level 3'];



  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: theme.colorScheme.primaryContainer,
              body: Form(
                  //key: _formKey,
                  child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(left: 15, top: 30, right: 18),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(left: 7, top: 10,bottom: 5),
                                          child: Text("Game",

                                            style: theme.textTheme.titleMedium,)
                                      ),
                                      TextFormField(
                                        autofocus: false,
                                        // controller: controller
                                        //     .lastNameController,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(15),
                                          hintText: "Enter the name of game",
                                          hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(8)),
                                          ),
                                        ),
                                        keyboardType: TextInputType.text,
                                        onChanged: (value) {
                                          // You can perform actions when the text changes
                                        },
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "Please enter valid text";
                                          }

                                          // You can add additional validation if needed

                                          return null;
                                        },
                                      ),
                                    ])),
//Position in game
                            Padding(
                              padding: getPadding(left: 15, top: 5, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(left: 7, top: 10, bottom: 5),
                                    child: Text(
                                      "Position in game",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  DropdownButtonFormField<String>(
                                    value: selectedGame,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedGame = value;
                                      });
                                    },
                                    items: games.map<DropdownMenuItem<String>>((String game) {
                                      return DropdownMenuItem<String>(
                                        value: game,
                                        child: Text(game),
                                      );
                                    }).toList(),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      hintText: "Select the name of the game",
                                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please select a game";
                                      }

                                      // You can add additional validation if needed

                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
//Rank in game
                            Padding(
                              padding: getPadding(left: 15, top: 5, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(left: 7, top: 10, bottom: 5),
                                    child: Text(
                                      "Rank in game",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  DropdownButtonFormField<String>(
                                    value: selectRank,
                                    onChanged: (value) {
                                      setState(() {
                                        selectRank = value;
                                      });
                                    },
                                    items: rank.map<DropdownMenuItem<String>>((String game) {
                                      return DropdownMenuItem<String>(
                                        value: game,
                                        child: Text(game),
                                      );
                                    }).toList(),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      hintText: "Select rank",
                                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please select a game";
                                      }

                                      // You can add additional validation if needed

                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
// number of goal
                            Padding(
                              padding: getPadding(left: 15, top: 5, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(left: 7, top: 10, bottom: 5),
                                    child: Text(
                                      "Number of goals",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  TextFormField(
                                    autofocus: false,
                                    // controller: controller
                                    //     .lastNameController,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      hintText: "Enter Number of Goals",
                                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                      ),
                                    ),
                                    keyboardType: TextInputType.number,
                                    onChanged: (value) {
                                      // You can perform actions when the text changes
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please enter valid goal";
                                      }

                                      // You can add additional validation if needed

                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
//cards yellow others

                            Padding(
                              padding: getPadding(left: 15, top: 5, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: getPadding(left: 7, top: 10, bottom: 5),
                                          child: Text(
                                            "Yellow cards",
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: getPadding(left: 7, top: 10, bottom: 5),
                                          child: Text(
                                            "Red cards",
                                            style: theme.textTheme.titleMedium,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child:
                                          TextFormField(
                                            autofocus: false,
                                            // controller: controller
                                            //     .lastNameController,
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(15),
                                              hintText: "No.of Yellow cards",
                                              hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                            onChanged: (value) {
                                              // You can perform actions when the text changes
                                            },
                                            validator: (value) {
                                              if (value == null || value.isEmpty) {
                                                return "Please enter valid text";
                                              }

                                              // You can add additional validation if needed

                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 5),
                                          child:
                                          TextFormField(
                                            autofocus: false,
                                            // controller: controller
                                            //     .lastNameController,
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(15),
                                              hintText: "No.of  Red cards",
                                              hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                              ),
                                            ),
                                            keyboardType: TextInputType.number,
                                            onChanged: (value) {
                                              // You can perform actions when the text changes
                                            },
                                            validator: (value) {
                                              if (value == null || value.isEmpty) {
                                                return "Please enter valid text";
                                              }

                                              // You can add additional validation if needed

                                              return null;
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

//Skill name
                            Padding(
                              padding: getPadding(left: 15, top: 5, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(left: 7, top: 10, bottom: 5),
                                    child: Text(
                                      "Skill Name",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  TextFormField(
                                    autofocus: false,
                                    // controller: controller
                                    //     .lastNameController,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      hintText: "Enter the skill name",
                                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                      ),
                                    ),
                                    keyboardType: TextInputType.text,
                                    onChanged: (value) {
                                      // You can perform actions when the text changes
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please enter valid goal";
                                      }

                                      // You can add additional validation if needed

                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),

 //skill level
                            Padding(
                              padding: getPadding(left: 15, top: 5, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(left: 7, top: 10, bottom: 5),
                                    child: Text(
                                      "Skill Level",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  DropdownButtonFormField<String>(
                                    value: selectskilllevel,
                                    onChanged: (value) {
                                      setState(() {
                                        selectskilllevel = value;
                                      });
                                    },
                                    items: level.map<DropdownMenuItem<String>>((String game) {
                                      return DropdownMenuItem<String>(
                                        value: game,
                                        child: Text(game),
                                      );
                                    }).toList(),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(15),
                                      hintText: "Select skill Level",
                                      hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(8)),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please select a game";
                                      }

                                      // You can add additional validation if needed

                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
  //Descrption
                            Padding(
                              padding: getPadding(left: 15, top: 5, right: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(left: 7, top: 10, bottom: 5),
                                    child: Text(
                                      "Description",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),

                                ],
                              ),
                            ),

                          ])))));
  }

  void onTapNext() {}
}




