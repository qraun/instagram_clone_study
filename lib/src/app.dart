import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imstagram_clone/src/components/image_data.dart';
import 'package:imstagram_clone/src/controller/bottom_nav_controller.dart';
import 'package:imstagram_clone/src/pages/active.dart';
import 'package:imstagram_clone/src/pages/home.dart';
import 'package:imstagram_clone/src/pages/mypage.dart';
import 'package:imstagram_clone/src/pages/search.dart';

class App extends GetView<BottomNavController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => WillPopScope(
        onWillPop: controller.willPopAction,
        child: Scaffold(
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              const Home(),
              Navigator(
                key: controller.searchPageNavigationKey,
                onGenerateRoute: (routeSetting) {
                  return MaterialPageRoute(builder: (context) => const Search());
                },
              ),
              const Text('UPLOAD'),
              const Active(),
              const MyPage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            currentIndex: controller.pageIndex.value,
            onTap: controller.changeBottomNav,
            items: [
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.homeOff),
                activeIcon: ImageData(IconsPath.homeOn),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.searchOff),
                activeIcon: ImageData(IconsPath.searchOn),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.uploadIcon),
                label: 'upload',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.activeOff),
                activeIcon: ImageData(IconsPath.activeOn),
                label: 'active',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueGrey,
                  ),
                ),
                label: 'mypage',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
