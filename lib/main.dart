import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/pages/blog_list.dart';
import 'dart:html' as html;

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Koushik Radhakrishnan',
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: HomePage(),
      routes: {
        '/blogs': (context) => BlogList(),
      },
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    var isMobile = MediaQuery.of(context).size.width < 600;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffdadedfd3), // Change the color of the border here
            width: 1.0, // Change the thickness of the border here
          ),
        ),
      ),
      child: AppBar(
        toolbarHeight: isMobile ? 100 : 200,
        title: title,
        centerTitle: false,
        backgroundColor: Colors.transparent, // Make the AppBar transparent
        elevation: 0, // Remove the shadow below the AppBar
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: CustomAppBar(
        title: Row(
          children: [
            Text('Koushik',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: isMobile ? 25 : 30)),
            Lottie.asset('lib/assets/lotties/typing.json',
                repeat: true,
                reverse: true,
                width: 30,
                height: 30,
                fit: BoxFit.contain),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.article),
      //       label: 'Blogs',
      //     ),
      //   ],
      //   onTap: (index) {
      //     if (index == 1) {
      //       Navigator.pushNamed(context, '/blogs');
      //     }
      //   },
      // ),
      body: Stack(children: [
        Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/images/background-4.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(
                  child: Column(children: [
                    ProfileSection(),
                    Wrap(
                      runSpacing: 10,
                      children: [
                        SizedBox(
                            height: 45,
                            width: 200,
                            child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xfff5461c)),
                                onPressed: () {
                                  html.AnchorElement anchorElement =
                                      new html.AnchorElement(
                                          href: 'lib/assets/resume/resume.pdf');
                                  anchorElement.download =
                                      'Koushik_Radhakrishnan';
                                  anchorElement.click();
                                },
                                label: Text('Download Resume',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                icon: Icon(Icons.download))),
                        SizedBox(width: 10),
                        SizedBox(
                          height: 45,
                            width: 200,
                          child: TextButton.icon(
                              onPressed: () {},
                              style:
                                  TextButton.styleFrom(iconColor: Colors.black),
                              label: Text(
                                'Projects',
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                              icon: Icon(Icons.open_in_new)),
                        )
                      ],
                    ),

                    // ProjectsSection(),
                    // ProjectsSection(),
                    // ProjectsSection(),
                    // ProjectsSection(),
                  ]),
                )),
          ),
        ),
      ]),
    );
  }
}

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var isMobile = MediaQuery.of(context).size.width < 600;

    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('lib/assets/images/koushik-3.png'),
          ),
          SizedBox(height: 20),
          Text('Hi! I Am Koushik Radhakrishnan',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w900, fontSize: isMobile ? 20 : 30)),
          SizedBox(height: 20),
          SizedBox(
            width: 500,
            child: Text(
              'Enthusiastic Frontend developer with 7+ years of experience in Software Development.',
              style: TextStyle(fontSize: isMobile ? 16 : 20),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  html.window.open(
                      'https://www.linkedin.com/in/koushikradhakrishnan/',
                      '_blank');
                },
                child: Lottie.asset('lib/assets/lotties/linkedin.json',
                    repeat: true, width: 75, height: 75, fit: BoxFit.cover),
              ),
              InkWell(
                onTap: () {
                  html.window
                      .open('https://www.facebook.com/Koushik.r.07/', '_blank');
                },
                child: Lottie.asset('lib/assets/lotties/facebook.json',
                    repeat: true, width: 75, height: 75, fit: BoxFit.cover),
              ),
              InkWell(
                onTap: () {
                  html.window
                      .open('https://www.instagram.com/koushikrad/', '_blank');
                },
                child: Lottie.asset('lib/assets/lotties/instagram.json',
                    repeat: true, width: 75, height: 75, fit: BoxFit.cover),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProjectsSection extends StatelessWidget {
  // Sample project data (dummy values)
  final List<Map<String, String>> projects = [
    {
      'title': 'Project 1',
      'description': 'Description for Project 1',
    },
    {
      'title': 'Project 2',
      'description': 'Description for Project 2',
    },
    {
      'title': 'Project 3',
      'description': 'Description for Project 3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(milliseconds: 375),
            childAnimationBuilder: (widget) => SlideAnimation(
              horizontalOffset: MediaQuery.of(context).size.width / 2,
              child: FadeInAnimation(
                child: widget,
              ),
            ),
            children: projects.map((project) {
              return ProjectTimelineItem(
                title: project['title']!,
                description: project['description']!,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class ProjectTimelineItem extends StatelessWidget {
  final String title;
  final String description;

  ProjectTimelineItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
