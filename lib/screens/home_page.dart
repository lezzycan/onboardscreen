import "package:flutter/material.dart";
import 'package:onboard_screen/screens/screen1.dart';
import '../data/data.dart';

import '../utilities/constants.dart';

OnboardingController _controller = OnboardingController();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  _controller.selectedPageIndex = index;
                });
              },
              itemCount: _controller.getPagesLength(),
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(_controller.getImageAsset(index)),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      _controller.getTitle(index),
                      style: ktitleStyle,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        _controller.getDescription(index),
                        style: kdescriptionStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              }),
          Positioned(
            bottom: 230.0,
            left: 200.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _controller.getPagesLength(),
                (index) => Container(

                  margin: const EdgeInsets.all(4.0),
                  width: _controller.selectedPageIndex == index ? 20 : 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: _controller.selectedPageIndex == index
                        ? Colors.white
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100.0,
            left: 50.0,
            right: 50.0,
            child: TextButton(
              onPressed: () {
                if (_controller.selectedPageIndex ==
                    _controller.getPagesLength() - 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Screen1();
                      },
                    ),
                  );
                } else {
                  pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: 450.0,
                height: 50.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  _controller.selectedPageIndex ==
                          _controller.getPagesLength() - 1
                      ? "GET STARTED"
                      : "Next",
                  style: knextButtonStyle,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15.0),
            alignment: Alignment.topRight,
            // margin: EdgeInsets.only(top: 0.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                });
              },
              child: SafeArea(
                child: Text(
                  _controller.selectedPageIndex ==
                          _controller.getPagesLength() - 1
                      ? " "
                      : "SKIP",
                  style: kskipStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
