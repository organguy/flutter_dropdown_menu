import 'package:dropdown_menu/src/controller/dropdown_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropdownList extends GetView<DropdownController> {
  const DropdownList({Key? key}) : super(key: key);

  Widget _dropdownList(){
    return Column(
      children: DropDownMenu.values.map((menu) => GestureDetector(
          onTap: (){
            controller.changeDropDownMenu(menu.index);
            Get.back();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
            color: Colors.transparent,
            child: Text(
                menu.name
            ),
          )
      )).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: GestureDetector(
                onTap: Get.back,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: controller.dropdownPositionY,
              child: Container(
                
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white
                ),
                child: _dropdownList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
