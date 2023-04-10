import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ActivityContainer extends StatelessWidget {
  const ActivityContainer({
    super.key,
    required this.text,
    required this.clock,
  });
  final String text;
  final String clock;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
      child: Container(
        width: MediaQuery.of(context).size.width / 1,
        height: MediaQuery.of(context).size.height / 12,
        decoration: BoxDecoration(
          color: Constants.whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Constants.mainColor,
              blurRadius: 4,
              offset: Offset(4, 8), // Shadow position
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.adjust_outlined,
                    size: 20,
                    color: Constants.mainColor,
                  ),
                  const SizedBox(width: 20),
                  Text(
                    text,
                    style: const TextStyle(
                      color: Constants.darkColor,
                      fontSize: Constants.activityfontSize,
                    ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    clock,
                    style: const TextStyle(
                      color: Constants.darkColor,
                      fontSize: Constants.activityfontSize,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
