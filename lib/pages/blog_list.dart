import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:html' as html;


import '../widgets/custom_app_bar.dart';

List<Map<String, String>> blogs = [
  { 'title':  'Detecting Ember.js Components Entering or Leaving the Viewport', 'imageURL': 'lib/assets/images/viewport.jpg', 'url': 'https://medium.com/@koushikrad/using-an-ember-cli-addon-detecting-ember-js-components-entering-or-leaving-the-viewport-dda5ad9b46bf', 'description': 'This is my first blog in Ember.js. In this blog, I would like to detail how we reduced our app route’s initial API requests and boost our application’s performance.'},
  { 'title':  'Code Reviews — Best Practices', 'imageURL': 'lib/assets/images/codereview.jpg', 'url': 'https://medium.com/@koushikrad/code-reviews-best-practices-686a365b79a8', 'description': 'There are numerous good articles, books available on the internet for the best code review practices such as Proven effective practices of code review, Humanizing Peer Reviews etc., In this post am gonna articulate my own experience on the best code review practices and also share what I have learnt from reading through various blogs and books on the same.'},
  { 'title': 'Exploring Flutter for Business Apps: Weighing Advantages and Drawbacks', 'imageURL': 'lib/assets/images/why_flutter.png', 'url': 'https://medium.com/@koushikrad/exploring-flutter-for-business-apps-weighing-advantages-and-drawbacks-ba530e5a61e2', 'description': 'After spending the past five months immersed in Flutter development, tackling both official projects and personal applications, I’m excited to bring my insights to the table. In this blog, I’ll be shedding light on why choosing Flutter for business development could be a game-changer. But don’t worry, I won’t be diving into the nitty-gritty technical details just yet — this post is all about the business perspective. If you’re eager to delve into the technical side of choosing Flutter, stay tuned for my next post. Keep an eye on this space!' }
].toList();

class BlogList extends StatelessWidget {
  const BlogList({super.key});

  @override
  Widget build(BuildContext context) {
    var isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: CustomAppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Blogs',
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: blogs.map((blog) => 
                SizedBox(
                  height: 500.0,
                  width: isMobile ? MediaQuery.of(context).size.width - 60 : 500.0,
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    onTap: () {
                      html.window.open(blog['url']!, 'new tab');

                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(blog['imageURL']!, height: 300, fit: BoxFit.cover, scale: 1.0),
                            Text(blog['title']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                            Text(blog['description']!, overflow: TextOverflow.ellipsis, maxLines: 3, style: const TextStyle(fontSize: 14),),
                            //LinkBut
                            InkWell(
                              hoverColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              child: const Row(
                                children: [ 
                                  Text('READ MORE', style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.bold, color: Colors.lightBlue)),
                                  SizedBox(width: 10),
                                  Icon(Icons.arrow_forward, color: Colors.lightBlue)
                                ]), onTap: () {
                              html.window.open(blog['url']!, 'new tab');
                            }),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
