import 'package:flutter/material.dart';
import 'package:mess_app/utils/app_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    size: 40,
                    color: AppConfig.secondColor,
                  ),
                ),
                Expanded(child: Text("Your Mess")),
              ],
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              MessHomeCard(
                messName: "Shankar Maharaj Mess",
              ),
              MessHomeCard(
                messName: "Ashirwad Mess",
              )
            ],
          ),
        ],
      )),
    );
  }
}

class MessHomeCard extends StatelessWidget {
  String messName;
  MessHomeCard({
    required this.messName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        child: SizedBox(
          // margin: const EdgeInsets.all(10),
          height: 270,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: Container(
                color: Colors.grey,
              )),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      messName,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: AppConfig.primColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "30 coupons left",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppConfig.lightGrey),
                        ),
                        Text(
                          "ends on 27-02-2023",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppConfig.lightGrey),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
