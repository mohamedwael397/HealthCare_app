import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:healthcare/Pages/ambulance.dart';
import 'package:healthcare/Pages/pharmacy.dart';
import 'package:healthcare/Pages/top_doctors.dart';
import 'package:healthcare/constant/constants.dart';

class Home extends StatelessWidget {
  List<String> images = [
    "assets/icons/Doctor.svg",
    "assets/icons/Pharmacy.svg",
    "assets/icons/Ambulance.svg",
  ];
  List<String> labels = ["Top Doctors", "Pharmacy", "Ambulance"];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.3),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            width: double.infinity,
            height: screenHeight * 0.30,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // النصوص
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          "assets/images/Ellipse 78.png",
                        ),
                      ),
                      Gap(10),
                      Text(
                        "Welcome!",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFF221F1F),
                        ),
                      ),
                      Text(
                        "Ruchita",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFF221F1F),
                        ),
                      ),
                      Gap(20),
                      Text(
                        "How is it going today?",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10, top: 20),
                  child: Image.asset(
                    "assets/images/young-woman-doctor-white-coat-with-stethoscope-pointing-with-index-finger-side-with-serious-face-standing-orange-wall-removebg-preview 1.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 15.0,
            ),
            child: Column(
              children: [
                Container(
                  height: 50.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Color.fromARGB(108, 86, 86, 86),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color.fromARGB(159, 86, 86, 86),
                        ),
                        Gap(10),
                        Text(
                          "Search doctor, drugs, articles...",
                          style: TextStyle(
                            color: Color.fromARGB(159, 86, 86, 86),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  height: screenHeight * 0.15,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        taps(images[0], labels[0], () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TopDoctors(),
                            ),
                          );
                        }),
                        taps(images[1], labels[1], () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Pharmacy()),
                          );
                        }),
                        taps(images[2], labels[2], () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ambulance(),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                ),
                Gap(15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Health article",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF221F1F),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF407CE2),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: screenHeight * 0.14,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.asset(
                            "assets/images/Rectangle_460.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10.0,
                              ),
                              child: Text(
                                "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFF565656),
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                            Gap(15),
                            Text(
                              "Jul 10, 2023 5min read",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          "assets/icons/Bookmark.svg",
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
