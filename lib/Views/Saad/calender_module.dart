import 'package:flutter/material.dart';
import 'package:metro_pat/Constants/constants.dart';
import 'package:metro_pat/Constants/size_config.dart';
import 'package:table_calendar/table_calendar.dart';
class Calender_module extends StatefulWidget {
  const Calender_module({super.key});

  @override
  State<Calender_module> createState() => _Calender_moduleState();
}

class _Calender_moduleState extends State<Calender_module> {
  var _selectedDay=DateTime.now();
  var _focusedDay=DateTime.now();
  int _step_index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        centerTitle: true,
        title: Text('Your Calender',style: TextStyle(
          color: secondary,
          fontSize: heading_size
        ),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.close,color: secondary,))
        ],
      ),
      backgroundColor: primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  width: SizeConfig.screenWidth*1,

                  child: TableCalendar(
                    calendarStyle: CalendarStyle(
                      defaultTextStyle: TextStyle(color: secondary)
                    ),
                    headerVisible: true,
                    headerStyle: HeaderStyle(
                      leftChevronIcon: Icon(
                        Icons.chevron_left,color: secondary,
                      ),
                      rightChevronIcon: Icon(
                        Icons.chevron_right,color: secondary,
                      ),
                      formatButtonVisible: false,
                      titleTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: heading_size
                      )
                    ),
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                        print(selectedDay);
                        _focusedDay = focusedDay;

                      });
                    },
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight*0.03,
                ),
                Container(
                  width: SizeConfig.screenWidth*1,
                  decoration: BoxDecoration(
                    color: secondary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                  ),
                  child: Stepper(

                    currentStep: _step_index,
                    onStepCancel: () {
                      if (_step_index > 0) {
                        setState(() {
                          _step_index --;
                        });
                      }
                    },
                    onStepContinue: () {

                        setState(() {
                          _step_index ++;
                        });

                    },
                    onStepTapped: (int index) {
                      setState(() {
                        _step_index = index;
                      });
                    },

                    steps: <Step>[
                      Step(
                        title: const Text('Task1'),
                        subtitle: Text('11am - 5pm'),
                        content: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ),
                      ),
                      Step(
                        title: const Text('Task2'),
                        subtitle: Text('11am - 5pm'),
                        content: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ),
                      ),
                      Step(
                        title: const Text('Task3'),
                        subtitle: Text('11am - 5pm'),
                        content: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ),
                      ),
                      Step(
                        title: const Text('Task4'),
                        subtitle: Text('11am - 5pm'),
                        content: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ),
                      ),
                      Step(
                        title: const Text('Task5'),
                        subtitle: Text('11am - 5pm'),
                        content: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ),
                      ),
                      Step(
                        title: const Text('Step 1 title'),
                        subtitle: Text('11am - 5pm'),
                        content: Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
