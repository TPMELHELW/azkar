import 'package:azkar/controller/home_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSreen extends StatelessWidget {
  const HomeSreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController controller = Get.put(HomeScreenController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Screen",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
          itemCount: controller.azkarAr.length,
          itemBuilder: (context, i) {
            return Container(
              padding: const EdgeInsets.all(50),
              margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(50),
              ),
              child:  Text("${controller.azkarAr[i]['TITLE']}"),
            );
          }),
    );
  }
}
