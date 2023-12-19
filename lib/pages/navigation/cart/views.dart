import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imitation_jingdong/pages/index.dart';

class CartPage extends GetView<CartController> {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("购物车"),
      ),
    );
  }

}