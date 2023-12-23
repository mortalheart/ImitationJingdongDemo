
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:imitation_jingdong/common/index.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TwoLevelWidget extends StatefulWidget {
  const TwoLevelWidget({super.key});
  @override
  State<TwoLevelWidget > createState() => _TwoLevelWidgetState();

}
class _TwoLevelWidgetState extends State<TwoLevelWidget>{
  startTime() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    navigationPage();
  }
  void navigationPage()  async {
    await SmartRefresher.of(context)?.controller.twoLevelComplete(curve:Curves.easeInBack);
    Future.delayed(const Duration(milliseconds: 2000));
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsImages.splashJpg),
            // 很重要的属性,这会影响你打开二楼和关闭二楼的动画效果,关联到TwoLevelHeader,如果背景一致的情况,请设置相同
            alignment: Alignment.topCenter,
            fit: BoxFit.cover),
      ),
    );
  }
}