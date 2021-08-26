import 'package:flutter/material.dart';
import 'package:ordo_ui_test/components/homepage/test_button.dart';
import 'package:ordo_ui_test/pages/finansial_page.dart';
import 'package:ordo_ui_test/pages/portfolio_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Made By',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: "Poppins", fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              '[Nada Hasni Muhammad]',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 64),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42),
              child: TestButton(
                text: "Test 1",
                onClick: () {},
              ),
            ),
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42),
              child: TestButton(
                text: "Test 2",
                onClick: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PortfolioPage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 42),
              child: TestButton(
                text: "Test 3",
                onClick: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => FinansialPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
