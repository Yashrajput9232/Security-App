import 'dart:math';
import 'package:flutter/material.dart';
import 'package:secure_me/Widgets/home_widgets/Custom_appbar.dart';
import 'package:secure_me/Widgets/home_widgets/Custom_slider.dart';
import 'package:secure_me/Widgets/home_widgets/Emergency.dart';
import 'package:secure_me/Widgets/home_widgets/LiveWidget.dart';
import 'package:secure_me/Widgets/SendLocation/SendLocation.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // const HomeScreen({super.key});
  int q_index = 1;

  get_random_quote() {
    Random random = Random();

    setState(() {
      q_index = random.nextInt(20);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 244, 255),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 35, 8, 8),
        child: Column(
          children: [
            custom_appbar(
              quotes_index: q_index,
              onTap: get_random_quote(),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Custom_slider(),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      'Emergency Contacts',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Emergency(),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      'Explore near you',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  LiveWidget(),
                  SendLocation(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
