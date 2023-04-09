import 'package:flutter/material.dart';
import 'package:flutty/constants/constants.dart';

class activity extends StatefulWidget {
  const activity({super.key});

  @override
  State<activity> createState() => _activityState();
}

class _activityState extends State<activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(child: Text(Constants.profileAppbartext)),
        titleTextStyle:
            TextStyle(color: Colors.black87, fontWeight: FontWeight.w900),
        backgroundColor: Constants.whiteColor,
      ),
      body: Column(
        children: [
          Container(
            color: Constants.whiteColor,
            padding: const EdgeInsets.all(Constants.paddingActivity),
            margin: const EdgeInsets.all(Constants.marginActivityappbar),
            
            height: 60,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.arrow_right_alt_sharp),
                SizedBox(
                  width: 25,
                ),
                Text(
                  Constants.activityTexttoday,
                  style: TextStyle(
                    color: Constants.blackColor,
                    fontSize: Constants.activityfontSizetittle,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
              ],
            ),
          ),
          Container(
            color: Constants.whiteColor,
            padding: const EdgeInsets.all(Constants.paddingActivity),
            margin: const EdgeInsets.all(Constants.marginActivity),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
              Icon(Icons.adjust_outlined,size: 25,),
              SizedBox(width: 27,),
                Text(
                  Constants.activityTextbreakfast,
                  style: TextStyle(
                      color: Constants.darkColor,
                      fontSize: Constants.activityfontSize,
                      fontWeight: FontWeight.bold),
                ),
                
                
                SizedBox(
                  width: 150,
                ),
                Text(
                 Constants.activityClock,
                  style: TextStyle(
                    color: Constants.darkColor,
                    fontSize: Constants.activityfontSize,
                  ),
                ),
                
              ],
            ),
          ),
          Container(
            color: Constants.whiteColor,
            padding: const EdgeInsets.all(Constants.paddingActivity),
            margin: const EdgeInsets.all(Constants.marginActivity),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                 Icon(Icons.adjust_outlined,size: 25,),
                 SizedBox(width: 25),
                Text(
                 Constants.activityTextwalk,
                  style: TextStyle(
                    color: Constants.darkColor,
                    fontSize: Constants.activityfontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 180,
                ),
                Text(
                  Constants.activityClockmorning,
                  style: TextStyle(
                    color: Constants.darkColor,
                    fontSize: Constants.activityfontSize,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Constants.whiteColor,
            padding: const EdgeInsets.all(Constants.paddingActivity),
            margin: const EdgeInsets.all(Constants.marginActivity),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                 Icon(Icons.adjust_outlined,size: 25,),
                 SizedBox(width: 25,),
                Text(
                  Constants.activityTexttraining,
                  style: TextStyle(
                      color: Constants.darkColor,
                      fontSize: Constants.activityfontSize,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 124,
                ),
                Text(
                 Constants.activityClocknoon,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: Constants.activityfontSize,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Constants.whiteColor,
            padding: const EdgeInsets.all(Constants.paddingActivity),
            margin: const EdgeInsets.all(Constants.marginActivitymid),
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.arrow_right_alt_sharp),
                SizedBox(
                  width: 25,
                ),
                Text(
                  Constants.activityTexttomorrow,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize:Constants.activityfontSizetittle,
                  ),
                ),
                SizedBox(
                  width: 0,
                ),
              ],
            ),
          ),
          Container(
            color: Constants.whiteColor,
            padding: const EdgeInsets.all(Constants.paddingActivity),
            margin: const EdgeInsets.all(Constants.marginActivity),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.adjust_outlined,size: 25,),
                 SizedBox(width: 25),
                Text(
                 Constants.activityTextwalk,
                  style: TextStyle(
                      color: Constants.darkColor,
                      fontSize: Constants.activityfontSize,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 180,
                ),
                Text(
                  Constants.activityClockmorning,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: Constants.activityfontSize,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Constants.whiteColor,
            padding: const EdgeInsets.all(Constants.paddingActivity),
            margin: const EdgeInsets.all(Constants.marginActivity),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Icon(Icons.adjust_outlined,size: 25),
                 SizedBox(width: 25),
                Text(
                 Constants.activityTexttraining,
                  style: TextStyle(
                    color: Constants.darkColor,
                    fontSize: Constants.activityfontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 124,
                ),
                Text(
                 Constants.activityClockmidday,
                  style: TextStyle(
                    color: Constants.darkColor,
                    fontSize: Constants.activityfontSize,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Constants.whiteColor,
            padding: const EdgeInsets.all(Constants.paddingActivity),
            margin: const EdgeInsets.all(Constants.marginActivity),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                 Icon(Icons.adjust_outlined,size: 25),
                 SizedBox(width: 25),
                Text(
                  Constants.activityTextswimming,
                  style: TextStyle(
                    color: Constants.darkColor,
                    fontSize: Constants.activityfontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                 Constants.activityClockafternoon,
                  style: TextStyle(
                    color: Constants.darkColor,
                    fontSize: Constants.activityfontSize,
                  ),
                )
              ],
            ),
          ),
          
        ],
      ),
    );
    ;
  }
}
