import 'package:flutter/material.dart';
import 'package:mess_app/utils/app_config.dart';
import 'package:mess_app/utils/fade_route_builder.dart';
import 'package:mess_app/views/home_page.dart';
import 'package:mess_app/views/persistent_navbar.dart';
import 'package:mess_app/views/login_screen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "The Mess App",
                  style: AppConfig.appTitleStyle,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/1.png',
                scale: 2,
                color: AppConfig.primColor,
              ),
            ],
          ),
          FloatingActionButton(
            onPressed: () {
              // Navigator.of(context)
              //     .push(FadeRouteBuilder(page: const NavBar()));
              Navigator.of(context)
                  .push(FadeRouteBuilder(page: const LoginScreen()));
            },
            backgroundColor: AppConfig.primColor,
            child: Icon(
              Icons.arrow_forward_ios_sharp,
              color: AppConfig.secondColor,
            ),
          )
        ],
      )),
    );
  }
}
