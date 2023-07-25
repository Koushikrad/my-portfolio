import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/pages/blog_list.dart';
import 'dart:html' as html;

import 'package:my_portfolio/pages/projects.dart';
import 'package:my_portfolio/widgets/custom_app_bar.dart';

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
        '/projects': (context) => Projects(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: CustomAppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Koushik',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: isMobile ? 24 : 30)),
            Lottie.asset('lib/assets/lotties/green_ripple.json',
                repeat: true,
                reverse: true,
                width: 45,
                height: 45,
                fit: BoxFit.contain),
          ],
        ),
      ),

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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/projects');
                          },
                          child: Text(
                            'PROJECTS',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              letterSpacing: 2,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/blogs');
                          },
                          child: Text(
                            'BLOGS',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              letterSpacing: 2,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        SizedBox(
                            height: 40,
                            child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xfff5461c)),
                                onPressed: () {
                                  html.AnchorElement anchorElement = new html
                                          .AnchorElement(
                                      href:
                                          'assets/lib/assets/resume/resume.pdf');
                                  anchorElement.download =
                                      'Koushik_Radhakrishnan';
                                  anchorElement.click();
                                },
                                label: Text('Resume',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                icon: Icon(Icons.download)))
                      ],
                    )
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
