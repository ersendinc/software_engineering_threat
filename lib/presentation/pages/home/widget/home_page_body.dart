import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:threat_awareness/domain/news/news.dart';
import 'package:threat_awareness/presentation/common_widgets/colors.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_app_bar.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_container_social.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_container_widget.dart';
import 'package:threat_awareness/presentation/common_widgets/custom_text.dart';
import 'package:threat_awareness/presentation/pages/home/widget/home_page_detail.dart';
import 'package:threat_awareness/presentation/routes/router.gr.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  PageController controller =
      PageController(viewportFraction: 1, keepPage: true, initialPage: 0);

  final List<NewsModel> banner = [
    NewsModel(
        title: "The 5G network is a threat to our health",
        writer: "By: John Doe",
        img: "asset/images/flood1.png",
        date: "2021-05-05",
        content: "Flood"),
    NewsModel(
        title: "The 5G network is a threat to our health",
        writer: "By: John Doe",
        img: "asset/images/fire.png",
        date: "2021-05-05",
        content: "Fire"),
    NewsModel(
        title: "The 5G network is a threat to our health",
        writer: "By: John Doe",
        img: "asset/images/deprem.png",
        date: "2021-05-05",
        content: "Earthquake"),
    NewsModel(
        title: "The 5G network is a threat to our health",
        writer: "By: John Doe",
        img: "asset/images/hortum.png",
        date: "2021-05-05",
        content: "Tornado"),
    NewsModel(
        title: "The 5G network is a threat to our health",
        writer: "By: John Doe",
        img: "asset/images/volkan.png",
        date: "2021-05-05",
        content: "Volcanic Eruption"),
    NewsModel(
        title: "The 5G network is a threat to our health",
        writer: "By: John Doe",
        img: "asset/images/heyelan.png",
        date: "2021-05-05",
        content: "Avalanche")
  ];
  final _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: "Home",
        appBarAction: Icons.bookmarks_rounded,
        appBarBackgroundColor: whiteColor,
        appBarIconColor: blackColor,
        appBarTitleTextStyle: const TextStyle(
            color: blackColor, fontSize: 45, fontWeight: FontWeight.bold),
        appBarLeading: Icons.notifications,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  labelText: 'Search...',
                ),
              ),
              const SizedBox(height: 20),
              const CustomText(
                  text: "Recommended",
                  textStyle: TextStyle(
                      color: blackColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  minFontSize: 28,
                  maxFontSize: 35,
                  textPadding: EdgeInsets.all(8)),
              SizedBox(
                height: 300,
                child: PageView.builder(
                    controller: controller,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return CustomContainerWidget(
                        onTap: () {
                          AutoRouter.of(context).push(HomeDetailRoute(
                              title: banner[index].title,
                              img: banner[index].img,
                              writer: banner[index].writer,
                              date: banner[index].date,
                              content: banner[index].content));
                        },
                        title: banner[index].title,
                        writer: banner[index].writer,
                        img: banner[index].img,
                        date: banner[index].date,
                        content: banner[index].content,
                      );
                    }),
              ),
              Container(
                height: 2,
                color: Colors.grey.shade300,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 30,
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: CustomText(
                            text: banner[index].content,
                            minFontSize: 14,
                            maxFontSize: 18,
                            textPadding: EdgeInsets.symmetric(horizontal: 4),
                          ));
                    }),
              ),
              const SizedBox(height: 20),
              const CustomContainerSocial(
                title: "The 5G network is a threat to our health",
                img: "asset/images/deprem.png",
                date: "2021-05-05",
                content: "Earthquake",
              ),
              const SizedBox(height: 15),
              const CustomContainerSocial(
                title: "The 5G network is a threat to our health",
                img: "asset/images/fire.png",
                date: "2021-05-05",
                content: "Fire",
              ),
              const SizedBox(height: 15),
              const CustomContainerSocial(
                title: "The 5G network is a threat to our health",
                img: "asset/images/heyelan.png",
                date: "2021-05-05",
                content: "Avalanche",
              ),
              const SizedBox(height: 15),
              const CustomContainerSocial(
                title: "The 5G network is a threat to our health",
                img: "asset/images/hortum.png",
                date: "2021-05-05",
                content: "Avalanche",
              ),
              const SizedBox(height: 15),
              const CustomContainerSocial(
                title: "The 5G network is a threat to our health",
                img: "asset/images/flood1.png",
                date: "2021-05-05",
                content: "Flood",
              ),
              const SizedBox(height: 15),
              const CustomContainerSocial(
                title: "The 5G network is a threat to our health",
                img: "asset/images/volkan.png",
                date: "2021-05-05",
                content: "Volcanic ",
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
