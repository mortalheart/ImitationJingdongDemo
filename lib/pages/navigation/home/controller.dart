import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeController extends GetxController {
  HomeController();
  RefreshController refreshController = RefreshController(initialRefresh: false);
  @override
  void dispose() {
    super.dispose();
    refreshController.dispose();
  }
  final searchList = [
    {
      "title": "HUAWEI Mate 60 Pro 抢先预购"
    },
    {
      "title": "西铁城机械手表"
    },
    {
      "title": "小米 K70"
    }
  ];
  final themeList = [
    {
      "background": "#F2961F1",
      "primary": "#EC3E33",
      "primary2": "#D4382E",
      "warn": "#F35400",
      "success": "#2B9529",
      "danger": "#E73125",
      "title": "#F2961F1",
      "content": "#505560",
      "subtitle": "#8A8F9D",
      "tip": "#A2A6BA",
      "reversal": "#FFFFFF",
      "underline": "#F0F1F5",
      "border": "#DCDEE0",
      "card_bg": "#f5f7f9",
      "shadow": "#1F24262A",
      "gradient1": "#EC3E33|#FF7A5C",
      "gradient2": "#FFC8D7FF|#FFFBFCFF|#FFFFFFFF",
      "gradient3": "#FFF33A00|#FFFFA928"
    }
  ];

  ///下拉刷新
  void onRefresh() async {
    print("刷新");
    await Future.delayed(const Duration(milliseconds: 2000));
    // refreshController.refreshCompleted();
  }
  /// 上拉加载
  void onLoading() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    // refreshController.loadComplete();
  }
}