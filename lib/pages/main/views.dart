import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/common/index.dart';
import 'package:imitation_jingdong/pages/index.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  // Avoid using private types in public APIs.
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const _MainViewGetX();
  }
}
class _MainViewGetX extends GetView<MainController> {
  const _MainViewGetX();

  // 主视图
  Widget _buildView() {
    return PopScope(
        // 防止连续点击两次退出
        onPopInvoked: (val)  {
      return;
    },
    child: Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        onPageChanged: controller.onIndexChanged,
        children: const [
          HomePage(),
          StrollPage(),
          NewProductPage(),
          CartPage(),
          MinePage(),
        ],
      ),
      bottomNavigationBar: GetBuilder<MainController>(
        id: 'navigation',
        builder: (controller) {
          return BuildNavigation(
            currentIndex: controller.currentIndex,
            items: [
              NavigationItemModel(
                label:LocaleKeys.tabBarHome.tr,
                icon: AssetsSvg.navHomeSvg,
              ),
              NavigationItemModel(
                label: LocaleKeys.tabBarStroll.tr,
                icon: AssetsSvg.navStrollSvg,
              ),
              NavigationItemModel(
                label: LocaleKeys.tabBarNewProduct.tr,
                icon: AssetsSvg.navNewProductSvg,
              ),
              NavigationItemModel(
                label:LocaleKeys.tabBarCart.tr,
                icon: AssetsSvg.navCartSvg,
              ),
              NavigationItemModel(
                label:LocaleKeys.tabBarMine.tr,
                icon: AssetsSvg.navMineSvg,
              ),
            ],
            onTap: (int val) {
              controller.onJumpToPage(val);
          },
          );
        },
      ),
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: MainController(),
      id: "main",
      builder: (_) => _buildView(),
    );
  }
}