import 'dart:async';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/common/index.dart';

class SplashController extends GetxController {
  SplashController();
  Timer? timer;
  final isAnimationCompleted = false.obs;
  //倒计时（单位：秒）10s
  late  RxInt timeCount = 4.obs;
  final adObj = {}.obs;

  @override
  void onInit() {
    super.onInit();
    final list= {
      'type':'ad',
      'id':1,
      'image':'https://tse4-mm.cn.bing.net/th/id/OIP-C.tAxB3qFE_on9pF_qQfPEXAHaNI?pid=ImgDet&rs=1'
    };
    adObj.value = list;

  }
  @override
  void onReady() {
    super.onReady();
    _initData();
    adPage();
    //关闭当前页面并跳转到主页
    FlutterNativeSplash.remove(); // 删除设备启动图，解决 Flutter App 启动开头的白屏问题
  }
  void adPage() async{
    // final  data = await SPUtils.getData('ad');
    // print('获取：$data');
      startLaunchTime();
    // if (data==null) {
    //   isShowAd.value = true;
    //   if (isShowAd.value) {
    //     startLaunchTime();
    //   }
    // }else{
    //   print('不是第一次加载了');
    // }
  }
  /// 开启倒计时
  Future<void> startLaunchTime() async {
    Timer(const Duration(milliseconds: 0), () {
      //periodic 周期: 1秒
      timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
        timeCount--;
        if (timeCount <= 0) {
          Timer(const Duration(milliseconds: 500), () {
            //取消倒计时，并跳转主页
            jumpToMain();
          });
        }
      });
    });
  }

  _initData() {
    update(["splash"]);
  }
  /// 跳转
  adOnclick() {
    if(timer !=null){
      timer?.cancel();
      // 关闭当前页面跳转广告详情和活动页
      if(adObj['type']=='ad_details'){ /// 广告详情
        return false;
      }
      if(adObj['type']=='ad'){
        _jumpToPage(); // 跳转界面
        return false;
      }
    }
  }
  /// 跳过
  jumpToMain() {
    if (timer != null) {
      timer?.cancel();
        // 跳转到下一个页面
        _jumpToPage(); // 跳转界面
    }
  }

  _jumpToPage() {
    Get.offAllNamed(RouteNames.main);
  }
}