import 'package:flutter/material.dart';
import 'package:flutty/widgets/activitycontainer.dart';
import '../constants/constants.dart';

class ActivityDemo extends StatefulWidget {
  const ActivityDemo({super.key});
  @override
  State<ActivityDemo> createState() => _ActivityDemoState();
}

class _ActivityDemoState extends State<ActivityDemo> {
  @override
  Widget build(BuildContext context) {
    var activityTextFlutter;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.mainColor,
        centerTitle: true,
        title: Text(
          Constants.activityTextappbar,
        ),
      ),
      body: Column(
        children: [
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
