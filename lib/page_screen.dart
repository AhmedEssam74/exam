import 'package:exam/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageScreen extends StatefulWidget {
  static const String routName = "PageScreen";

  const PageScreen({super.key});

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  int _selectedIndex = 0;
   final controller = PageController(
    viewportFraction: 1,
    keepPage: true,
  );

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/logo2.png"),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Homescreen.routName);
            },
            child: const Icon(
              Icons.notifications_none_sharp,
              size: 30,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello, Sara Rose",
                style: TextStyle(
                  color: Color(0xff371B34),
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "How are you feeling today ?",
                style: TextStyle(
                  color: Color(0xff371B34),
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color(0x806a6a8b),
                              borderRadius: BorderRadius.circular(40)),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  "assets/images/Frame1.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Love",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color(0x806a6a8b),
                              borderRadius: BorderRadius.circular(40)),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  "assets/images/Frame2.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Cool",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color(0x806a6a8b),
                              borderRadius: BorderRadius.circular(40)),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  "assets/images/Frame3.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Happy",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color(0x806a6a8b),
                              borderRadius: BorderRadius.circular(40)),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  "assets/images/Frame4.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Sad",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feature",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "See more",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              //Carousel Section
              // CarouselSlider(
              //   items: [1, 2, 3, 4, 5, 6].map((i) {
              //     return Builder(
              //       builder: (BuildContext context) {
              //         return _carouselSection();
              //       },
              //     );
              //   }).toList(),
              //   options: CarouselOptions(
              //       height: 200,
              //       enlargeCenterPage: true,
              //       enableInfiniteScroll: false),
              // ),
              Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: PageView.builder(
                      padEnds: false,
                      controller: controller,
                      itemCount: 3,

                      itemBuilder: (_, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: _carouselSection(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const WormEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      type: WormType.thinUnderground,
                      activeDotColor: Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exercise",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "See more",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: const Color(0xffF9F5FF),
                      padding: const EdgeInsets.all(16),
                      child: const Row(
                        children: [
                          ImageIcon(
                            AssetImage("assets/images/icone1.png"),
                            color: Color(0xffB692F6),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Relaxation",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0xffF9F5FF),
                      padding: const EdgeInsets.all(16),
                      child: const Row(
                        children: [
                          ImageIcon(
                            AssetImage("assets/images/icone2.png"),
                            color: Color(0xffFAA7E0),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Meditation",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: const Color(0xffF9F5FF),
                      padding: const EdgeInsets.all(16),
                      child: const Row(
                        children: [
                          ImageIcon(
                            AssetImage("assets/images/icone3.png"),
                            color: Color(0xffFEB273),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Breathing",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      color: const Color(0xffF9F5FF),
                      padding: const EdgeInsets.all(16),
                      child: const Row(
                        children: [
                          ImageIcon(
                            AssetImage("assets/images/icone4.png"),
                            color: Color(0xff7CD4FD),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Yoga",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color(0xff667085),
        selectedItemColor: Colors.green,
        iconSize: 30,
        backgroundColor: Colors.transparent,
        elevation: 0,
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        enableFeedback: false,
        showUnselectedLabels: false,
        useLegacyColorScheme: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTap,
        items: [
          _buildNavItem(Icons.home, '', 0),
          _buildNavItem(Icons.signpost, '', 1),
          _buildNavItem(Icons.calendar_today, '', 2),
          _buildNavItem(Icons.person_outline, '', 3),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          const SizedBox(height: 4),
          _selectedIndex == index
              ? Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                )
              : const SizedBox(),
        ],
      ),
      label: label,
    );
  }

  Widget _carouselSection() {
    return Expanded(
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          color: const Color(0xffECFDF3),
          borderRadius: BorderRadius.circular(16),
        ),
        height: 170,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Positive vibes",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff344054),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Boost your mood with\npositive vibes",
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff344054),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                            color: Color(0xff32D583), shape: BoxShape.circle),
                        child: const Icon(
                          Icons.play_arrow,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "10 Mins",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Image.asset(
                "assets/images/image_sec.png",
                fit: BoxFit.fill,
                height: 120,
                // width: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
