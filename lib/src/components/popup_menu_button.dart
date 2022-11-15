import 'package:dropdown_menu/src/controller/dropdown_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopupButtonMenu extends GetView<DropdownController> {
  const PopupButtonMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: const Offset(0, 50),
      shape: ShapeBorder.lerp(
          const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
              )
          ),
          const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)
              )
          ),
          0
      ),
      onSelected: (value) {
        controller.changeDropDownMenu(value);
      },
      elevation: 0,
      itemBuilder: (context) {
        return DropDownMenu.values.map((menu) =>
            PopupMenuItem(
                value: menu.index,
                child: Text(menu.name)
            )).toList();
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Obx(() {
              return Text(
                  controller.currentItem.value.name
              );
            }),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
