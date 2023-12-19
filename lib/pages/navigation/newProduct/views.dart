import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/pages/index.dart';

class NewProductPage extends GetView<NewProductController> {
  const NewProductPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("新品"),
     ),
   );
  }

}