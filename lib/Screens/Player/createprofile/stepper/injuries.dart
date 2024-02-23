import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Injury {
  final String? injuryName;
  final DateTime? injuryDate;
  final int? expectedRecoveryDays;

  Injury({this.injuryName, this.injuryDate, this.expectedRecoveryDays});
}

class InjuriesScreen extends StatefulWidget {
  const InjuriesScreen({Key? key}) : super(key: key);

  @override
  _InjuriesScreenState createState() => _InjuriesScreenState();
}

class _InjuriesScreenState extends State<InjuriesScreen> {
  List<Injury> injuriesList = [];

  TextEditingController injuryNameController = TextEditingController();
  TextEditingController expectedRecoveryDaysController = TextEditingController();

  DateTime? selectedDate;
  String? selectedRecoveryPeriod;

  final List<String> recoveryPeriods = ['Days', 'Weeks', 'Months'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Your existing code for displaying injuries





              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 7, top: 10, bottom: 5),
                child: Text("Injury name", style: TextStyle(fontSize: 16)),
              ),
              TextField(
                controller: injuryNameController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  hintText: "Enter injury name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 7, top: 10, bottom: 5),
                child: Text("Injury date", style: TextStyle(fontSize: 16)),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        final pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime.now(),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: ThemeData.light(),
                              child: child ?? Container(),
                            );
                          },
                        );

                        if (pickedDate != null) {
                          setState(() {
                            selectedDate = pickedDate;
                          });
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectedDate != null ? DateFormat.yMMMd().format(selectedDate!) : 'Select Date',
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                            Icon(Icons.date_range),
                          ],
                        ),
                      ),
                    ),

                  ),
                ],
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 7, top: 10, bottom: 5),
                child: Text("Expected Recovery", style: TextStyle(fontSize: 16)),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: expectedRecoveryDaysController,
                        decoration: InputDecoration(
                          hintText: 'Enter expected recovery ',
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(width: 10),
                    DropdownButton<String>(
                      value: selectedRecoveryPeriod,
                      hint: Text('Select'),
                      onChanged: (value) {
                        setState(() {
                          selectedRecoveryPeriod = value;
                        });
                      },
                      items: recoveryPeriods.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (injuryNameController.text.isEmpty || expectedRecoveryDaysController.text.isEmpty || selectedRecoveryPeriod == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please enter all fields')),
                    );
                  } else {
                    addInjury();
                  }
                },
                child: Text('Add Injury'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addInjury() {
    if (injuryNameController.text.isNotEmpty && expectedRecoveryDaysController.text.isNotEmpty && selectedRecoveryPeriod != null) {
      // Convert the expected recovery days to days
      int expectedRecoveryDays = int.parse(expectedRecoveryDaysController.text);
      switch (selectedRecoveryPeriod) {
        case 'Weeks':
          expectedRecoveryDays *= 7;
          break;
        case 'Months':
          expectedRecoveryDays *= 30; // Assuming a month is 30 days
          break;
      }

      setState(() {
        injuriesList.add(
          Injury(
            injuryName: injuryNameController.text,
            injuryDate: selectedDate,
            expectedRecoveryDays: expectedRecoveryDays,
          ),
        );
        injuryNameController.clear();
        expectedRecoveryDaysController.clear();
        selectedDate = null;
        selectedRecoveryPeriod = null;
      });
    }
  }
}
