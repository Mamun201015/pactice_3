import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:project_3/app/modules/home/models/Repo_model.dart';

class HomeController extends GetxController {
  var arguData;
  @override
  void onInit() {
    isLoading.value = false;
    arguData = Get.arguments;
    calluserdata(arguData);
    super.onInit();
  }

  RxBool isLoading = false.obs;
  RxBool isListview = false.obs;

  RxList<RepoModel> repoList = <RepoModel>[].obs;
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

  callrepodata(String username) async {
    String url = "https://api.github.com/users/$username/ripos";
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

      isLoading.value = true;
    }
  }
}
