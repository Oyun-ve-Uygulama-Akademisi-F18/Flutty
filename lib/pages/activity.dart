import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../widgets/activitycontainer.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.mainColor,
        centerTitle: true,
        title: const Text(
          Constants.activityTextappbar,
        ),
      ),
      body: Column(
        children: const [
          ActivityContainer(
              text: Constants.activityTextbreakfast,
              clock: Constants.activityClock),
          ActivityContainer(
              text: Constants.activityTextbook,
              clock: Constants.activityClockmorning),
          ActivityContainer(
              text: Constants.activityTexttslack,
              clock: Constants.activityClocknoon),
          ActivityContainer(
              text: Constants.activityTextflutter,
              clock: Constants.activityClockafternoon),
          ActivityContainer(
              text: Constants.activityTextwork,
              clock: Constants.activityClockafter),
          ActivityContainer(
              text: Constants.activityTextlive,
              clock: Constants.activityClocknightr),
        ],
      ),
    );
  }
}
