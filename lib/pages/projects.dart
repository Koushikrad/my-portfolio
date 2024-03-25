import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../widgets/custom_app_bar.dart';

class Projects extends StatelessWidget {
  // Sample project data (dummy values)

  final List<String> sgxExperience = [
    'I\'m one of the two front-end developers responsible for developing portals for investors. Responsible for building reusable forms, components and widgets.',
    'Contributed to improving the website\'s performance by suggesting an effective caching mechanism using service worker.',
    'Writing unit tests and taking care of deployments.',
    'Developed responsive and user-friendly frontend code to ensure seamless and consistent user experiences across various devices and screen sizes.',
    'Collaborated closely with design and product teams to implement new features and enhancements to the design system, resulting in improved usability and efficiency.',
    'Actively contributed to the expansion of the design system by creating and maintaining reusable UI components, reducing development time and promoting a cohesive user experience.',
    'Front-end: HTML 5, Javascript, SCSS.'
  ];

  final List<String> sgxExperience2 = [
    'Played a pivotal role in the frontend development efforts within a cross-functional team working on a project utilizing Flutter, a framework for building natively compiled applications for mobile, web, and desktop from a single codebase.',
    'Actively participated in the development and maintenance of the company\'s design system, collaborating closely with design and product teams to integrate design system components seamlessly into the Flutter codebase.',
    'Provided valuable insights and technical expertise during code reviews, ensuring adherence to Flutter best practices and design system guidelines, resulting in a robust and scalable codebase.',
    'Front-end: Flutter 3.16.'
  ];

  final List<String> sgxExperience3 = [
    'Collaborated on the development of DLTribute, an internal tool built on Flutter, aimed at enhancing employee engagement and recognition within the company.',
    'Played a vital role in the frontend development of DLTribute, implementing user interfaces and contributing to the seamless integration of blockchain technology for the employee reward system.',
    'Worked closely with stakeholders to understand requirements and translate them into user-friendly features and functionalities, ensuring alignment with company culture and values.',
    'Utilized Flutter\'s capabilities to create a responsive and intuitive user experience, facilitating the transfer of points and promoting a culture of recognition and appreciation.',
    'Front-end: Flutter 3.16.'
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
        body: Stack(children: [
          Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/assets/images/background-3.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          constraints: BoxConstraints(
                              maxWidth: (isMobile
                                  ? double.maxFinite
                                  : MediaQuery.of(context).size.width * 0.70)),
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
                                  Text('Senior Developer',
                                      style: TextStyle(
                                          fontSize: topicSize,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2)),
                                  const SizedBox(width: 10),
                                  const Text('(December 2022 - Present)',
                                      style: TextStyle(
                                          fontSize: 12.0, letterSpacing: 2)),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Wrap(
                                  runSpacing: 10,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Text('IFIS Asia Private Ltd.,',
                                        style: TextStyle(
                                            fontSize: topicSize,
                                            letterSpacing: 2)),
                                    const Text(
                                        '(Working under SGX Group - Singapore)',
                                        style: TextStyle(
                                            fontSize: 12, letterSpacing: 2))
                                  ])
                            ],
                          )),
                      const SizedBox(height: 20),
                      const Text('Project 1: SGX Investor Portal',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2)),
                      const SizedBox(height: 20),
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: (isMobile
                                ? double.maxFinite
                                : MediaQuery.of(context).size.width * 0.70)),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: sgxExperience.map((item) {
                            return Column(children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "\u2022",
                                      style: TextStyle(fontSize: 30),
                                    ), //bullet text
                                    const SizedBox(
                                      width: 10,
                                    ), //space between bullet and text
                                    Expanded(
                                      child: Text(item,
                                          style: const TextStyle(
                                              fontSize: 16)), //text
                                    ),
                                  ]),
                              const SizedBox(height: 20)
                            ]);
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                          'Project 2: Genghis (Mobile app and web unification)',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2)),
                      const SizedBox(height: 20),
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: (isMobile
                                ? double.maxFinite
                                : MediaQuery.of(context).size.width * 0.70)),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: sgxExperience2.map((item) {
                            return Column(
                              children: [
                                Row(children: [
                                  const Text(
                                    "\u2022",
                                    style: TextStyle(fontSize: 30),
                                  ), //bullet text
                                  const SizedBox(
                                    width: 10,
                                  ), //space between bullet and text
                                  Expanded(
                                    child: Text(item,
                                        style: const TextStyle(
                                            fontSize: 16)), //text
                                  )
                                ]),
                                const SizedBox(height: 10)
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const SizedBox(height: 20),
                      const Text('Project 3: DLTribute',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2)),
                      const SizedBox(height: 20),
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: (isMobile
                                ? double.maxFinite
                                : MediaQuery.of(context).size.width * 0.70)),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: sgxExperience3.map((item) {
                            return Column(
                              children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "\u2022",
                                        style: TextStyle(fontSize: 30),
                                      ), //bullet text
                                      const SizedBox(
                                        width: 10,
                                      ), //space between bullet and text
                                      Expanded(
                                        child: Text(item,
                                            style: const TextStyle(
                                                fontSize: 16)), //text
                                      )
                                    ]),
                                const SizedBox(height: 10)
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                          constraints: BoxConstraints(
                              maxWidth: (isMobile
                                  ? double.maxFinite
                                  : MediaQuery.of(context).size.width * 0.70)),
                          padding: const EdgeInsets.symmetric(vertical: 30),
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
                                  Text('Lead Software Engineer - Front end',
                                      style: TextStyle(
                                          fontSize: topicSize,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2)),
                                  const SizedBox(width: 10),
                                  const Text('(March 2018 - December 2022)',
                                      style: TextStyle(
                                          fontSize: 12.0, letterSpacing: 2)),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Text('Freshworks',
                                  style: TextStyle(
                                      fontSize: topicSize, letterSpacing: 2))
                            ],
                          )),
                      const SizedBox(height: 20),
                      const Text(
                          'Project 1: Smart HR Software for Business (HRMS) - FRESHTEAM',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2)),
                      const SizedBox(height: 20),
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: (isMobile
                                ? double.maxFinite
                                : MediaQuery.of(context).size.width * 0.70)),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: fWExperience.map((item) {
                            return Column(
                              children: [
                                Row(children: [
                                  const Text(
                                    "\u2022",
                                    style: TextStyle(fontSize: 30),
                                  ), //bullet text
                                  const SizedBox(
                                    width: 10,
                                  ), //space between bullet and text
                                  Expanded(
                                    child: Text(item,
                                        style: const TextStyle(
                                            fontSize: 16)), //text
                                  )
                                ]),
                                const SizedBox(height: 10)
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                          constraints: BoxConstraints(
                              maxWidth: (isMobile
                                  ? double.maxFinite
                                  : MediaQuery.of(context).size.width * 0.70)),
                          padding: const EdgeInsets.symmetric(vertical: 30),
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
                                  const SizedBox(width: 10),
                                  const Text('(June 2015 - March 2018)',
                                      style: TextStyle(
                                          fontSize: 12.0, letterSpacing: 2)),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Text('IVTL Infoview Technologies Pvt Ltd.,',
                                  style: TextStyle(
                                      fontSize: topicSize, letterSpacing: 2))
                            ],
                          )),
                      const SizedBox(height: 20),
                      const Text(
                          'Project 1: Web-based Enterprise Resource Planning tool - AI WORKS:',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2)),
                      const SizedBox(height: 20),
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: (isMobile
                                ? double.maxFinite
                                : MediaQuery.of(context).size.width * 0.70)),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: ivtlExperience.map((item) {
                            return Column(
                              children: [
                                Row(children: [
                                  const Text(
                                    "\u2022",
                                    style: TextStyle(fontSize: 30),
                                  ), //bullet text
                                  const SizedBox(
                                    width: 10,
                                  ), //space between bullet and text
                                  Expanded(
                                    child: Text(item,
                                        style: const TextStyle(
                                            fontSize: 16)), //text
                                  )
                                ]),
                                const SizedBox(height: 10)
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 30)
                    ]),
              ))
        ]));
  }
}
