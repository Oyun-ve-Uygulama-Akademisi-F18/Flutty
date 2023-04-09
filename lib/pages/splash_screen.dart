// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late PageController _pageController;
  int currentpage = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentpage = _pageController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
                itemCount: splashData.length,
                controller: _pageController,
                itemBuilder: (context, index) => splashContent(
                    image: splashData[index].image,
                    title: splashData[index].title,
                    description: splashData[index].description)),
          ),
          Padding(
            padding: const EdgeInsets.all(45.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${currentpage + 1}/${splashData.length}'),
                MaterialButton(
                  onPressed: () {
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.ease);
                    if (currentpage == 2) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: ((context) => const Login())));
                    }
                  },
                  child: const Text('Devam'),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class splash {
  final String image, title, description;

  splash({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<splash> splashData = [
  splash(
    image: Constants.splashScreen1,
    title: Constants.splashScreen1Title1,
    description: Constants.splashScreen1SubTitle1,
  ),
  splash(
    image: Constants.splashScreen2,
    title: Constants.splashScreen1Title2,
    description: Constants.splashScreen1SubTitle2,
  ),
  splash(
    image: Constants.splashScreen3,
    title: Constants.splashScreen1Title3,
    description: Constants.splashScreen1SubTitle3,
  )
];

class splashContent extends StatelessWidget {
  const splashContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 20, bottom: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            TextButton(
              style: const ButtonStyle(),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => const Login())));
              },
              child: const Text('Geç',
                  style: TextStyle(color: Constants.mainColor)),
            ),
          ]),
        ),
        Image.asset(
          image,
          height: 300,
        ),
        const Spacer(),
        Text(title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.black)),
        const SizedBox(height: 13),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            description,
            textAlign: TextAlign.center,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
