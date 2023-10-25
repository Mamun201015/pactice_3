import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:project_3/app/modules/home/models/Repo_model.dart';
import 'package:project_3/app/modules/mainapppage/controller/mainpage_controller.dart';

class HomeController extends GetxController {
  var arguData;
  @override
  void onInit() {
    isLoading.value = true;
    arguData = Get.arguments;
    calluserdata(arguData);
    super.onInit();
  }

  RxBool isLoading = false.obs;
  RxBool isListview = false.obs;

  changelistview() {
    isListview.value = !isListview.value;
  }

  RxString userName = "".obs;
  RxString user = "".obs;
  RxString userImagename = "".obs;
  RxString userBio = "".obs;

  calluserdata(String username) async {
    String url = "https://api.github.com/users/$username";
    var cellrepodata = await http.get(Uri.parse(url));
    if (cellrepodata.statusCode == 200) {
      var userdata = json.decode(cellrepodata.body);
      user.value = userdata["name"] ?? "";
      userName.value = userdata["company"] ?? "";
      userImagename.value = userdata["avatar_url"] ?? "";
      userBio.value = userdata["bio"] ?? "";
      callrepodata(username);
    } else {
      Get.back();
    }
  }

  RxList<RepoModel> repoList = <RepoModel>[].obs;
  callrepodata(String username) async {
    String url = "https://api.github.com/users/$username/repos";
    var cellrepodata = await http.get(Uri.parse(url));
    if (cellrepodata.statusCode == 200) {
      var userdata = json.decode(cellrepodata.body);
      for (var element in userdata) {
        repoList.add(RepoModel(
            name: element["name"].toString(),
            url: element["html_url"].toString(),
            createdAt: element["created_at"].toString(),
            pushedAt: element["pushed_at"].toString(),
            updateAt: element["updated_at"].toString()));
      }
      repoList.refresh();

      isLoading.value = false;
    }
  }

  nameA2Z() {
    repoList.sort(
      (a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()),
    );
    repoList.refresh();
    Get.back();
  }

  nameZ2A() {
    repoList.sort(
      (a, b) => b.name.toLowerCase().compareTo(a.name.toLowerCase()),
    );
    repoList.refresh();
    Get.back();
  }

  showsortdi() {
    final colorcontroller = Get.put(MainAppPageController());
    Get.bottomSheet(
      Container(
        height: 300,
        width: double.infinity,
        color: colorcontroller.theme.value ? Colors.blue : Colors.lightGreen,
        child: ListView(
          padding: EdgeInsets.only(top: 30, left: 20),
          children: [
            InkWell(
              onTap: () {
                nameA2Z();
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Name a-z"),
              ),
            ),
            InkWell(
              onTap: () {
                nameZ2A();
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Name z-a"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Date order by create"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Date order by push"),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Date order by update"),
              ),
            ),
          ],
        ),
      ),
      enterBottomSheetDuration: Duration(seconds: 1),
      exitBottomSheetDuration: Duration(seconds: 1),
    );
  }
}
