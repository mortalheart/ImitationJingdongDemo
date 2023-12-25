import 'package:get/get.dart';
import 'package:imitation_jingdong/common/index.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeController extends GetxController {
  HomeController();
  RefreshController refreshController = RefreshController(initialRefresh: false);
  // Banner 当前位置
  int bannerCurrentIndex = 0;
  // Banner 数据
  List<KeyValueModel> bannerItems = [];
  List  menuList = [];
  @override
  void onInit() {
    super.onInit();
    intData();
  }
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
  // Banner 切换事件
  void onChangeBanner(int index, /*CarouselPageChangedReason*/ reason) {
    bannerCurrentIndex = index;
    update(["home_banner"]);
  }

  void intData() {
    bannerItems =  [
      KeyValueModel(
          key: "01",
          value:
          "https://ducafecat.oss-cn-beijing.aliyuncs.com/flutter_woo_commerce_getx_ducafecat/banner01.png"),
      KeyValueModel(
          key: "02",
          value:
          "https://ducafecat.oss-cn-beijing.aliyuncs.com/flutter_woo_commerce_getx_ducafecat/banner02.png"),
      KeyValueModel(
          key: "03",
          value:
          "https://ducafecat.oss-cn-beijing.aliyuncs.com/flutter_woo_commerce_getx_ducafecat/banner03.png"),
    ];
    final list =  [
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/supermarket.png?updatedAt=1691716657143",
        "menuName": "超市",
        "menuCode": "m01",
        "h5url": "https://prodev.m.jd.com/mall/active/3xhqjGH1wMz5FaMgrfYhR22sFvqz/index.html"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/electrical.gif?updatedAt=1691717470888",
        "menuName": "电器",
        "menuCode": "m02",
        "h5url": "https://prodev.m.jd.com/mall/active/8tHNdJLcqwqhkLNA8hqwNRaNu5f/index.html"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/international.gif?updatedAt=1691717471164",
        "menuName": "国际",
        "menuCode": "m11",
        "h5url": "https://gmart.jd.com"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/clothing.png?updatedAt=1691717469469",
        "menuName": "服饰",
        "menuCode": "m03",
        "h5url": "https://h5.m.jd.com/pb/014076750/48qPXkwvatBBCAhdeTXG5WQam4yq/index.html"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/fruit.png?updatedAt=1691717469547",
        "menuName": "免费水果",
        "menuCode": "m04"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/member.png?updatedAt=1691717473002",
        "menuName": "会员",
        "menuCode": "m10",
        "h5url": "https://shop.m.jd.com/shop/home?shopId=1000343263&utm_source=iosapp&utm_medium=appshare&utm_campaign=t_335139774&utm_term=Wxfriends&ad_od=share&utm_user=plusmember&gx=RnAomTM2bjTfycsT-YNzCTmOd9y9Fa0&gxd=RnAokmcIOjONmssR_YNyCIMKIb4Xa5DwoYs6Qbze_4h9aUHPDecui7HTjqAWskU"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/fresh.png?updatedAt=1691717469544",
        "menuName": "生鲜",
        "menuCode": "m13",
        "h5url": "https://pro.m.jd.com/mall/active/4P9a2T9osR9JvtzHVaYTPvsecRtg/index.html"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/second-hand.png?updatedAt=1691717473251",
        "menuName": "拍拍二手",
        "menuCode": "m17",
        "h5url": "https://prodev.m.jd.com/mall/active/LHGZv1DrGkva1jNpUkKFuNFN6oo/index.html"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/xixi.png?updatedAt=1691717474366",
        "menuName": "喜喜",
        "menuCode": "m05"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/livingExpenses.png?updatedAt=1691717469316",
        "menuName": "生活缴费",
        "menuCode": "m06"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/collarBean.png?updatedAt=1691717469626",
        "menuName": "领豆",
        "menuCode": "m07"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/collectingVouchers.png?updatedAt=1691717469456",
        "menuName": "领券",
        "menuCode": "m08"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/LingjinBrick.png?updatedAt=1691717469616",
        "menuName": "领金贴",
        "menuCode": "m09"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/woerma.png?updatedAt=1691717473335",
        "menuName": "沃尔玛",
        "menuCode": "m14"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/travel.png?updatedAt=1691717473295",
        "menuName": "旅行",
        "menuCode": "m15"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/seeAdoctor.png?updatedAt=1691717473273",
        "menuName": "看病购药",
        "menuCode": "m16"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/BeanSprout.png?updatedAt=1691717469473",
        "menuName": "种豆得豆",
        "menuCode": "m18"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/pets.png?updatedAt=1691717473123",
        "menuName": "萌宠",
        "menuCode": "m19"
      },
      {
        "menuIcon": "https://ik.imagekit.io/guoguodad/mall/home/more.png?updatedAt=1691717472932",
        "menuName": "更多频道",
        "menuCode": "m20"
      }
    ];
    menuList =  list;
  }
}