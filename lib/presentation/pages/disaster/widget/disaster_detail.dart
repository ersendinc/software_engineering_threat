import 'package:flutter/material.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_text.dart';

class DisasterPageDetail extends StatelessWidget {
  const DisasterPageDetail({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade300,
                    borderRadius: BorderRadius.circular(10)),
                height: 150,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("asset/images/donate.png"),
                            fit: BoxFit.cover),
                      ),
                      height: 150,
                      width: 220,
                    ),
                    Container(
                      width: 130,
                      padding: const EdgeInsets.all(4),
                      child: CustomText(
                        text: "Donate For Turkey",
                        minFontSize: 20,
                        maxFontSize: 22,
                        textPadding: EdgeInsets.all(4),
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 160,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          width: 100,
                          child: CustomText(
                              text: "US NEWS",
                              minFontSize: 18,
                              maxFontSize: 22,
                              textPadding: EdgeInsets.all(4)),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("asset/images/telegram.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      width: 330,
                      child: CustomText(
                          text:
                              "Current situation might lead to waterborne infections, which would be particularly devastating to children",
                          minFontSize: 14,
                          maxFontSize: 15,
                          textPadding: EdgeInsets.all(4)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          width: 150,
                          child: CustomText(
                              text: "22 :00 12.12.2020",
                              minFontSize: 14,
                              maxFontSize: 15,
                              textPadding: EdgeInsets.all(4)),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 165,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          width: 100,
                          child: CustomText(
                              text: "US NEWS",
                              minFontSize: 18,
                              maxFontSize: 22,
                              textPadding: EdgeInsets.all(4)),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("asset/images/telegram.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      width: 330,
                      child: CustomText(
                          text:
                              "Current situation might lead to waterborne infections, which would be particularly devastating to children",
                          minFontSize: 14,
                          maxFontSize: 15,
                          textPadding: EdgeInsets.all(4)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          width: 150,
                          child: CustomText(
                              text: "22 :00 12.12.2020",
                              minFontSize: 14,
                              maxFontSize: 15,
                              textPadding: EdgeInsets.all(4)),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 160,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          width: 100,
                          child: CustomText(
                              text: "US NEWS",
                              minFontSize: 18,
                              maxFontSize: 22,
                              textPadding: EdgeInsets.all(4)),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("asset/images/telegram.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      width: 330,
                      child: CustomText(
                          text:
                              "Current situation might lead to waterborne infections, which would be particularly devastating to children",
                          minFontSize: 14,
                          maxFontSize: 15,
                          textPadding: EdgeInsets.all(4)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          width: 150,
                          child: CustomText(
                              text: "22 :00 12.12.2020",
                              minFontSize: 14,
                              maxFontSize: 15,
                              textPadding: EdgeInsets.all(4)),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 160,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          width: 100,
                          child: CustomText(
                              text: "US NEWS",
                              minFontSize: 18,
                              maxFontSize: 22,
                              textPadding: EdgeInsets.all(4)),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("asset/images/telegram.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      width: 330,
                      child: CustomText(
                          text:
                              "Current situation might lead to waterborne infections, which would be particularly devastating to children",
                          minFontSize: 14,
                          maxFontSize: 15,
                          textPadding: EdgeInsets.all(4)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          width: 150,
                          child: CustomText(
                              text: "22 :00 12.12.2020",
                              minFontSize: 14,
                              maxFontSize: 15,
                              textPadding: EdgeInsets.all(4)),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                height: 160,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          width: 100,
                          child: CustomText(
                              text: "US NEWS",
                              minFontSize: 18,
                              maxFontSize: 22,
                              textPadding: EdgeInsets.all(4)),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("asset/images/telegram.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      width: 330,
                      child: CustomText(
                          text:
                              "Current situation might lead to waterborne infections, which would be particularly devastating to children",
                          minFontSize: 14,
                          maxFontSize: 15,
                          textPadding: EdgeInsets.all(4)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          width: 150,
                          child: CustomText(
                              text: "22 :00 12.12.2020",
                              minFontSize: 14,
                              maxFontSize: 15,
                              textPadding: EdgeInsets.all(4)),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.warning_amber_outlined,
                              color: Colors.red,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
