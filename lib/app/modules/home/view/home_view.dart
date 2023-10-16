import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/app/modules/home/controller/home_controller.dart';
import 'package:project_3/app/widget/KappPage.dart';


import '../../../widget/KAppImage.dart';
import '../../../widget/Ktext.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: KAppBar(title: "HomePage"),
      body: Obx(
        () => controller.isLoading.value
            ? Center(
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: Get.width / 10,
                          height: Get.width / 10,
                          child: CircularProgressIndicator(),
                        ),
                        SizedBox(
                          height: Get.width / 5,
                        ),
                        ElevatedButton.icon(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(Icons.cancel),
                            label: Text("Cancel"))
                      ],
                    ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          KAppImage(
                            imageUrl:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS75ebrwvgVW5Ks_oLfCbG8Httf3_9g-Ynl_Q&usqp=CAU",
                          ),
                          Column(
                            children: [
                              Ktext(
                                text: "Test",
                                fontWeight: FontWeight.bold,
                                fontsize: 20,
                              ),
                              Ktext(text: "Test")
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Ktext(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat"),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                              onPressed: () {}, child: Ktext(text: "Sort^")),
                          SizedBox(
                            height: 70,
                          ),
                          Ktext(text: "Repo List"),
                          SizedBox(
                            height: 70,
                          ),
                          IconButton(
                              onPressed: () {
                                
                              },
                              icon: Icon(Icons.grid_view)),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Klist_view(),
                      SizedBox(
                        height: 100 * 10,
                        child: GridView.builder(
                          itemCount: 20,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20,
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) => KGridview(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}

class KGridview extends StatelessWidget {
  const KGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 50,
        color: Colors.brown,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Ktext(
              text: "Hello world",
              fontWeight: FontWeight.bold,
              fontsize: 20,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Public")),
            SizedBox(
              height: 20,
            ),
            Ktext(text: "Uploaded On"),
            SizedBox(
              height: 20,
            ),
            Ktext(text: "2020-10-24"),
          ],
        ),
      ),
    );
  }
}
