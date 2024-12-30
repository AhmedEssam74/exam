import 'package:exam/my_theme.dart';
import 'package:exam/page_screen.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  static const String routName = "/";

  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/Logo.png"),
          actions: const [
            Icon(
              Icons.settings,
              size: 40,
              color: MyTheme.mainColor,
            ),
            SizedBox(
              width: 16,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "See more",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 50,
                child: TabBar(
                    indicatorColor: Colors.transparent,
                    dividerColor: Colors.transparent,
                    indicatorWeight: 2,
                    tabs: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 35,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffF5F5FA),
                            ),
                            child: const Text(
                              "Art",
                              style: TextStyle(
                                color: Color(0xff2E2E5D),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 35,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffF5F5FA),
                            ),
                            child: const Text(
                              "Business",
                              style: TextStyle(
                                color: Color(0xff2E2E5D),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 35,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffF5F5FA),
                            ),
                            child: const Text(
                              "Comedy",
                              style: TextStyle(
                                color: Color(0xff2E2E5D),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 35,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffF5F5FA),
                            ),
                            child: const Text(
                              "Drama",
                              style: TextStyle(
                                color: Color(0xff2E2E5D),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended For You",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "See more",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
              SizedBox(
                height: 350,
                child: Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 16,
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Image.asset(
                          "assets/images/image$index.png",
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Seller",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "See more",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
              Container(
                child: SizedBox(
                  height: 150,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 16,
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffF5F5FA),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset(
                                    "assets/images/imagee$index.png",
                                    fit: BoxFit.cover,
                                    width: 150,
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Light Mage",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(color: Colors.black),
                                    ),
                                    const Text(
                                      "Laurie Forest",
                                      style: TextStyle(
                                        color: Color(0xff6A6A8B),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.deepOrange,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.deepOrange,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.deepOrange,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.deepOrange,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.deepOrange,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      "1,000+ Listeners",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xff6A6A8B),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_sharp),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined),
              label: 'Library',
            ),
          ],
        ),
      ),
    );
  }
}
