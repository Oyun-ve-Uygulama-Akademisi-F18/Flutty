// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutty/constants/constants.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DenemeHome extends StatefulWidget {
  const DenemeHome({super.key});

  @override
  State<DenemeHome> createState() => _DenemeHomeState();
}

class _DenemeHomeState extends State<DenemeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.whiteColor,
      appBar: _appbarDesign(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _rowTexts(),
                Constants.sizedBoxHeight20,
                HomePageDutiesCard()
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.3,
              decoration: const BoxDecoration(
                color: Constants.mainColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.elliptical(300, 300),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'MO\nTİVAS\nYON',
                      style: TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Odasına Katılmak için hemen tıkla.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _rowTexts() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              DateFormat.yMMMMd().format(DateTime.now()),
              style: const TextStyle(fontSize: 15, color: Constants.greyColor),
            ),
            const Text(
              "İyi Günler Muhammed",
              style: TextStyle(fontSize: 22, color: Constants.blackColor),
            )
          ],
        ),
      ],
    );
  }

  AppBar _appbarDesign() {
    return AppBar(
      backgroundColor: Constants.whiteColor,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Constants.blackColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: () {},
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            ),
          ),
        )
      ],
    );
  }
}

class HomePageDutiesCard extends StatelessWidget {
  const HomePageDutiesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.width / 2.2,
        child: Card(
          color: Constants.mainColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Stack(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    Constants.whiteDotsCard,
                    opacity: const AlwaysStoppedAnimation(0.6),
                  ),
                ),
              ),
              const Positioned(
                left: 10,
                top: 60,
                child: Text(
                  "Proje Yönetimi\nHaftalık Görevler",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Constants.whiteColor),
                ),
              ),
              const Positioned(
                left: 10,
                bottom: 20,
                child: Text(
                  "4 of 5 Completed",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Constants.whiteColor),
                ),
              ),
              Positioned(
                right: 10,
                top: 20,
                child: CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1500,
                  radius: 60.0,
                  lineWidth: 15.0,
                  percent: 0.5,
                  backgroundColor: Color.fromARGB(255, 184, 225, 185),
                  progressColor: Colors.white,
                  center: const Text(
                    "50%",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                ),
              )
            ],
          ),
        ));
  }
}
