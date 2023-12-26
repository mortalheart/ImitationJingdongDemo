import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/common/index.dart';
import 'package:imitation_jingdong/pages/index.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification) {
          // int depth = notification.depth;
          // double distance = notification.metrics.pixels;
          return false;
      },
      child: GetBuilder(
        id: "HomePage",
        init: Get.find<HomeController>(),
        builder: (_) {
          return RefreshConfiguration.copyAncestor(
            context: context,
            enableScrollWhenTwoLevel: true,
            /// 下拉二楼继续滑动
            maxOverScrollExtent: 120,
            /// 下拉最大高度
            child: SmartRefresher(
              controller: controller.refreshController,
              enableTwoLevel: true,
              enablePullDown: true,
              enablePullUp: true,
              header:  const TwoLevelHeader(
                releaseText: '下拉更新',
                refreshingText: '更新中...',
                canTwoLevelText: '继续下拉有惊喜',
                completeText: '更新完成',
                idleText: '下拉更新',
                textStyle: TextStyle(color: Colors.white),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AssetsImages.splashJpg),
                      fit: BoxFit.cover,
                      // 很重要的属性,这会影响你打开二楼和关闭二楼的动画效果
                      alignment: Alignment.topCenter
                  ),
                ),
                twoLevelWidget: TwoLevelWidget(),
              ),
              //自定义上拉样式
              footer: const SmartRefresherFooterWidget(),
              onRefresh: controller.onRefresh,
              onLoading: controller.onLoading,
              child: Scaffold(
                body: ExtendedNestedScrollView(
                    pinnedHeaderSliverHeightBuilder: () {
                      return MediaQuery.viewPaddingOf(context).top + 85;
                    },
                  headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                    return [
                      homeHeader(context),
                      tabList(context),
                      // banner(context),
                      // avBanner(context),
                      menuSlider(context)
                    ];
                  },
                  body: <Widget>[
                    // banner(context),
                    // avBanner(context),
                    // menuSlider(context)
                  ].toColumn(),
                ),
              ),

            ),


          );
        },
      ),
    );
  }
}