import 'package:flutter/material.dart';
import 'package:flutty/pages/login.dart';

import '../constants/constants.dart';

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
                itemCount: onboardData.length,
                controller: _pageController,
                itemBuilder: (context, index) => OnboardContent(
                    image: onboardData[index].image,
                    title: onboardData[index].title,
                    description: onboardData[index].description)),
          ),
          Padding(
            padding: const EdgeInsets.all(45.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${currentpage + 1}/' + onboardData.length.toString()),
                MaterialButton(
                  onPressed: () {
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 700),
                        curve: Curves.ease);
                    if (currentpage == 2) {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: ((context) => Login())));
                    }
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class Onboard {
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> onboardData = [
  Onboard(
    image: Constants.loginPageImage,
    title: Constants.loginWelcome,
    description: Constants.loginWelcome,
  ),
  Onboard(
    image: Constants.loginPageImage,
    title: Constants.loginWelcome,
    description: Constants.loginWelcome,
  ),
  Onboard(
    image: Constants.loginPageImage,
    title: Constants.loginWelcome,
    description: Constants.loginWelcome,
  )
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
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
                    MaterialPageRoute(builder: ((context) => Login())));
              },
              child: Text('Skip'),
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
                .headline4
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
