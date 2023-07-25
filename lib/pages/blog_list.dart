import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../widgets/custom_app_bar.dart';

class BlogList extends StatelessWidget {
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
      body: Center(
        child: SingleScrollChildView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('lib/assets/lotties/coming_soon.json',
                    repeat: true, width: 500, height: 500, fit: BoxFit.cover),
            Text('BLOGS COMING SOON !', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2)),
          ],
        ),
       ),
      ),
    );
  }
}
