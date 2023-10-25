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
    var controller = Get.put(HomeController());
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
                          KAppImage(imageUrl: controller.userImagename.value),
                          Column(
                            children: [
                              Ktext(
                                text: controller.user.value,
                                fontWeight: FontWeight.bold,
                                fontsize: 20,
                              ),
                              Ktext(text: controller.userName.value)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Ktext(
                        text: controller.userBio.value,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: () {
                                controller.showsortdi();
                              },
                              child: Ktext(text: "Sort^")),
                          SizedBox(
                            height: 70,
                          ),
                          Ktext(text: "Repo List"),
                          SizedBox(
                            height: 70,
                          ),
                          Obx(
                            () => IconButton(
                              onPressed: () {
                                controller.changelistview();
                                print(controller.repoList.length);
                              },
                              icon: controller.isListview.value
                                  ? Icon(Icons.list)
                                  : Icon(Icons.grid_view),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Klist_view(),
                      Obx(
                        () =>
                            //  controller.repoList.isEmpty
                            //     ? const SizedBox(child: Text("Loading...."),)
                            //     :
                            controller.isListview.value
                                ? SizedBox(
                                    height: 120 *
                                        controller.repoList.length.toDouble(),
                                    child: ListView.separated(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.repoList.length,
                                      separatorBuilder: (context, index) {
                                        return const SizedBox(
                                          height: 10,
                                        );
                                      },
                                      itemBuilder: (context, index) {
                                        var item = controller.repoList[index];
                                        return InkWell(
                                          onTap: () {},
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20),
                                            height: 100,
                                            color: Color.fromARGB(
                                                255, 6, 154, 195),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Ktext(
                                                      text: item.name,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Ktext(text: item.createdAt),
                                                    Ktext(text: item.updateAt),
                                                    Ktext(text: item.pushedAt),
                                                  ],
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text("public"))
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                : SizedBox(
                                    height: 100 *
                                        controller.repoList.length.toDouble(),
                                    child: GridView.builder(
                                      itemCount: controller.repoList.length,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisSpacing: 20,
                                              mainAxisSpacing: 20,
                                              crossAxisCount: 2),
                                      itemBuilder: (context, index) {
                                        var item = controller.repoList[index];
                                        return GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: 50,
                                            color: Colors.brown,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Ktext(
                                                  text: item.name,
                                                  fontWeight: FontWeight.bold,
                                                  fontsize: 20,
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text("Public")),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Ktext(text: item.createdAt),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Ktext(text: item.updateAt),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
