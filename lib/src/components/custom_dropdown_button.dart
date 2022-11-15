import 'package:dropdown_menu/src/components/dropdown_list.dart';
import 'package:dropdown_menu/src/controller/dropdown_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropdownButton extends GetView<DropdownController> {
  const CustomDropdownButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Get.to(
            const DropdownList(),
            opaque: false,
            transition: Transition.fadeIn,
          );
        },
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Obx(() {
                return Text(
                  controller.currentItem.value.name,
                );
              }),
              const Icon(Icons.arrow_drop_down)
            ],
          ),
        )
    );
  }
}
