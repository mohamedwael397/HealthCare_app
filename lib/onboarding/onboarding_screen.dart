import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthcare/onboarding/signup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoarding {
  String image;
  String title;

  onBoarding(this.image, this.title);
}

boardingwidget(String image, String title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(image, width: 296, height: 467),
      Gap(10),
      Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Color(0xFF221F1F),
        ),
        textAlign: TextAlign.start,
      ),
    ],
  );
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  bool islast = false;
  List<onBoarding> pages = [
    onBoarding(
      "assets/images/female1.png",
      "Find a lot of specialist doctors in one place",
    ),
    onBoarding(
      "assets/images/male2.png",
      "Get advice only from a doctor you believe in.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child: Text(
                "Skip",
                style: TextStyle(fontSize: 16.0, color: Color(0xFFA1A8B0)),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: pages.length,
                onPageChanged: (index) {
                  setState(() {
                    if (index == pages.length - 1) {
                      islast = true;
                      print("Last");
                    } else {
                      islast = false;
                      print("not last");
                    }
                  });
                },
                itemBuilder: (context, index) {
                  return boardingwidget(pages[index].image, pages[index].title);
                },
              ),
            ),
            Gap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: pages.length,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Color(0xFF407CE2),
                    dotWidth: 10,
                    dotHeight: 10,
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    if (islast == true) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    } else {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  backgroundColor: Color(0xFF407CE2),
                  shape: CircleBorder(),
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
