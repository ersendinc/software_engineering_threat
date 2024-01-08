import 'package:flutter/material.dart';
import 'package:threat_awareness/presentation/common_widgets/colors.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_app_bar.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_text.dart';

class DisasterPage extends StatelessWidget {
  const DisasterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        elevation: 0,
        title: const Text("Disaster"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.monetization_on),
            iconSize: 30,
            onPressed: () {},
          ),
          IconButton(
            iconSize: 30,
            icon: const Icon(Icons.notification_important_sharp),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Real Time Disaster",
                minFontSize: 25,
                maxFontSize: 30,
                textPadding: EdgeInsets.all(14),
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 6.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.brown.shade300,
                              radius: 25,
                              child: Image.asset("asset/images/Storm.png"),
                            ),
                            SizedBox(width: 6),
                            Column(
                              children: [
                                CustomText(
                                    text: "disaster disaaster disaster",
                                    minFontSize: 14,
                                    maxFontSize: 16,
                                    textPadding: EdgeInsets.all(4)),
                                CustomText(
                                    text: "disaster disaaster disaster",
                                    minFontSize: 14,
                                    maxFontSize: 16,
                                    textPadding: EdgeInsets.all(4)),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Latest Disaster News",
                minFontSize: 25,
                maxFontSize: 30,
                textPadding: EdgeInsets.all(14),
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                height: 200,
                child: Expanded(
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/images/felaket.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14.0, vertical: 6.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              text:
                                  "Tornado Recovery Tough in Missisippi, One of Poorest States",
                              minFontSize: 18,
                              maxFontSize: 20,
                              textPadding: EdgeInsets.all(4)),
                          CustomText(
                              textStyle: TextStyle(
                                color: Colors.white,
                              ),
                              text:
                                  "Poverty is adding to the challenges of recovering from a massive tornado that pushed through Mississippi  from a massive tornado that pushed through Mississippi",
                              minFontSize: 12,
                              maxFontSize: 13,
                              textPadding: EdgeInsets.all(4))
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: Expanded(
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/images/felaket.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14.0, vertical: 6.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              text:
                                  "Tornado Recovery Tough in Missisippi, One of Poorest States",
                              minFontSize: 18,
                              maxFontSize: 20,
                              textPadding: EdgeInsets.all(4)),
                          CustomText(
                              textStyle: TextStyle(
                                color: Colors.white,
                              ),
                              text:
                                  "Poverty is adding to the challenges of recovering from a massive tornado that pushed through Mississippi  from a massive tornado that pushed through Mississippi",
                              minFontSize: 12,
                              maxFontSize: 13,
                              textPadding: EdgeInsets.all(4))
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: Expanded(
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/images/felaket.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14.0, vertical: 6.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              text:
                                  "Tornado Recovery Tough in Missisippi, One of Poorest States",
                              minFontSize: 18,
                              maxFontSize: 20,
                              textPadding: EdgeInsets.all(4)),
                          CustomText(
                              textStyle: TextStyle(
                                color: Colors.white,
                              ),
                              text:
                                  "Poverty is adding to the challenges of recovering from a massive tornado that pushed through Mississippi  from a massive tornado that pushed through Mississippi",
                              minFontSize: 12,
                              maxFontSize: 13,
                              textPadding: EdgeInsets.all(4))
                        ],
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
