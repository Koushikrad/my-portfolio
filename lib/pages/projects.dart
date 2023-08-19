import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/pages/blog_list.dart';
import 'dart:html' as html;

import '../widgets/custom_app_bar.dart';

class Projects extends StatelessWidget {
  // Sample project data (dummy values)

  final List<String> sgxExperience = [
    'I\'m one of the two front-end developers who is responsible for developing portals for Investors.',
    'Building re-usable forms, components and widgets using Web Components.',
    'Contributing to performance of the website by suggesting effective caching mechanism using service worker.'
  ];

  final List<String> fWExperience = [
    'I\'m one of the core front-end developers contributing to the development of an HRMS product called Freshteam.',
    'Applied new/existing solution patterns to improve the performance and reduced the time of the first contentful paint by 1.5 seconds',
    'Solved 100 plus depreciation in the app and also fixed major security vulnerabilities with the proper solution and approval of architects.',
    'Being a Squad lead for 8 member team, was responsible for planning, delivering and doing retrospectives with the team for the same.',
    'Front-end: Ember JS (version 3.12 LTS), SCSS',
    'Back-end: Ruby on Rails (Ruby version 2.5.0 and Rails 5.2), MySQL 8.0.',
    'Complete control over the remote Repository in GIT handling files and perform code reviews.'
  ];

  final List<String> ivtlExperience = [
    'I\'m one of the core developers contributing to the development of an ERP product called HUE (AIWORKS).',
    'I lead a junior team of 8 members to deliver the customer support module within the product.',
    'Front-end : HTML 5, Google-closure, LESS.',
    'Back-end: Java SE 8, Spring Framework (REST Web Services), Cassandra 3.0.15, Elastic Search 5.6.3.'
  ];

  Projects({super.key});

  @override
  Widget build(BuildContext context) {
    var isMobile = MediaQuery.of(context).size.width < 600;
    var topicSize = isMobile ? 16.0 : 20.0;

    return Scaffold(
        appBar: CustomAppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Projects',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: isMobile ? 25 : 30)),
              Lottie.asset('lib/assets/lotties/green_ripple.json',
                  repeat: true,
                  reverse: true,
                  width: 45,
                  height: 45,
                  fit: BoxFit.contain),
            ],
          ),
        ),
        body: Stack(
            children: [Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/images/background-3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.all(30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(
                                  0xffdadedfd3), // Change the color of the border here
                              width:
                                  1.0, // Change the thickness of the border here
                            ),
                          ),
                        ),
                        alignment: Alignment.topLeft,
                        //height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              runSpacing: 10,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text('Senior Developer',
                                    style: TextStyle(
                                        fontSize: topicSize,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2)),
                                SizedBox(width: 10),
                                Text('(December 2022 - Present)',
                                    style: TextStyle(
                                        fontSize: 12.0, letterSpacing: 2)),
                              ],
                            ),
                            SizedBox(height: 5),
                            Wrap(
                                runSpacing: 10,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Text('IFIS Asia Private Ltd.,',
                                      style: TextStyle(
                                          fontSize: topicSize, letterSpacing: 2)),
                                  Text('(Working under SGX Group - Singapore)',
                                      style: TextStyle(
                                          fontSize: 12, letterSpacing: 2))
                                ])
                          ],
                        )),
                    SizedBox(height: 20),
                    Text('Project 1: SGX Investor Portal',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2)),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: sgxExperience.map((item) {
                          return Row(children: [
                            Text(
                              "\u2022",
                              style: TextStyle(fontSize: 30),
                            ), //bullet text
                            SizedBox(
                              width: 10,
                            ), //space between bullet and text
                            Expanded(
                              child: Text(item,
                                  style: TextStyle(fontSize: 16)), //text
                            )
                          ]);
                        }).toList(),
                      ),
                    ),
            
            
                    SizedBox(height: 30),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(
                                  0xffdadedfd3), // Change the color of the border here
                              width:
                                  1.0, // Change the thickness of the border here
                            ),
                          ),
                        ),
                        alignment: Alignment.topLeft,
                        //height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              runSpacing: 10,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text('Lead Software Engineer - Front end',
                                    style: TextStyle(
                                        fontSize: topicSize,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2)),
                                SizedBox(width: 10),
                                Text('(March 2018 - December 2022)',
                                    style: TextStyle(
                                        fontSize: 12.0, letterSpacing: 2)),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text('Freshworks',
                                style: TextStyle(
                                    fontSize: topicSize, letterSpacing: 2))
                          ],
                        )),
                    SizedBox(height: 20),
                    Text(
                        'Project 1: Smart HR Software for Business (HRMS) - FRESHTEAM',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2)),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: fWExperience.map((item) {
                          return Row(children: [
                            Text(
                              "\u2022",
                              style: TextStyle(fontSize: 30),
                            ), //bullet text
                            SizedBox(
                              width: 10,
                            ), //space between bullet and text
                            Expanded(
                              child: Text(item,
                                  style: TextStyle(fontSize: 16)), //text
                            )
                          ]);
                        }).toList(),
                      ),
                    ),
            
            
                    SizedBox(height: 30),
                    Container(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color(
                                  0xffdadedfd3), // Change the color of the border here
                              width:
                                  1.0, // Change the thickness of the border here
                            ),
                          ),
                        ),
                        alignment: Alignment.topLeft,
                        //height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              runSpacing: 10,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text('Developer Engineer',
                                    style: TextStyle(
                                        fontSize: topicSize,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 2)),
                                SizedBox(width: 10),
                                Text('(June 2015 - March 2018)',
                                    style: TextStyle(
                                        fontSize: 12.0, letterSpacing: 2)),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text('IVTL Infoview Technologies Pvt Ltd.,',
                                style: TextStyle(
                                    fontSize: topicSize, letterSpacing: 2))
                          ],
                        )),
                    SizedBox(height: 20),
                    Text(
                        'Project 1: Web-based Enterprise Resource Planning tool - AI WORKS:',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2)),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: ivtlExperience.map((item) {
                          return Row(children: [
                            Text(
                              "\u2022",
                              style: TextStyle(fontSize: 30),
                            ), //bullet text
                            SizedBox(
                              width: 10,
                            ), //space between bullet and text
                            Expanded(
                              child: Text(item,
                                  style: TextStyle(fontSize: 16)), //text
                            )
                          ]);
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 30)
                  ]),
            ))]));
  }
}
