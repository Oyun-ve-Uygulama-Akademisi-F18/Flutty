// ignore_for_file: prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutty/constants/constants.dart';
import 'package:flutty/pages/login.dart';
import 'package:flutty/services/firebase_service.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                const HomePageDutiesCard()
              ],
            ),
          ),
          const SizedBox(height: 30),
          const MotivationRoom(),
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
      leading: IconButton(
          onPressed: () async {
            try {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Login(),
              ));
            } catch (e) {
              log(e.toString());
            }
          },
          icon: const Icon(
            Icons.power_settings_new_rounded,
            size: 30,
            color: Constants.blackColor,
          )),
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

class MotivationRoom extends ConsumerWidget {
  const MotivationRoom({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(userProvider);
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(60.0),
              ),
            ),
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                    height: 400,
                    child: users.when(
                      data: (data) => ListView(
                        children: data
                            .map((e) => Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(320),
                                      side: const BorderSide(
                                          width: 2,
                                          color: Constants.greyColor)),
                                  child: ListTile(
                                    leading: const CircleAvatar(
                                      backgroundColor: Constants.mainColor,
                                    ),
                                    title: Text(e.name),
                                    subtitle: Text(e.username),
                                    trailing: const Icon(
                                      Icons.voice_chat,
                                      size: 30,
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                      error: (error, stackTrace) => Text(error.toString()),
                      loading: () => const CircularProgressIndicator.adaptive(),
                    )),
              );
            },
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.8,
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
    );
  }
}

class HomePageDutiesCard extends StatelessWidget {
  const HomePageDutiesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List title = ["Proje Yönetimi\nHaftalık Görevler", "Muhammed", "Akgül"];
    List progress = ["70%", "50%", "20%"];
    List percent = [0.7, 0.5, 0.2];
    List completed = [
      "7/10 Tamamlandı ",
      "5/10 Tamamlandı ",
      "2/10 Tamamlandı"
    ];
    return SizedBox(
      height: 200.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: title.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Constants.mainColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    Constants.whiteDotsCard,
                    opacity: const AlwaysStoppedAnimation(0.6),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 60,
                  child: Text(
                    title[index],
                    style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: Constants.whiteColor),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 20,
                  child: Text(
                    completed[index],
                    style: const TextStyle(
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
                    percent: percent[index],
                    backgroundColor: const Color.fromARGB(255, 184, 225, 185),
                    progressColor: Colors.white,
                    center: Text(
                      progress[index],
                      style: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
