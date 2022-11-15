import 'package:dropdown_menu/src/controller/dropdown_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropdownButtonWidget extends GetView<DropdownController> {
  const DropdownButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return DropdownButton(
        value: controller.currentItem.value.index,
        onChanged: (int? value) {
          controller.changeDropDownMenu(value);
        },
        items: DropDownMenu.values.map((menu) => DropdownMenuItem(
          value: menu.index,
          child: Text(menu.name)
        )).toList(),
      );
    });
  }
}
