import 'package:dropdown_menu/src/components/custom_dropdown_button.dart';
import 'package:dropdown_menu/src/components/dropdown_button.dart';
import 'package:dropdown_menu/src/components/popup_menu_button.dart';
import 'package:dropdown_menu/src/controller/dropdown_controller.dart';
import 'package:dropdown_menu/src/screens/page1.dart';
import 'package:dropdown_menu/src/screens/page2.dart';
import 'package:dropdown_menu/src/screens/page_default.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends GetView<DropdownController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dropdown Sample'),
        ),
        body: Column(
          children: [
            CustomDropdownButton(key: controller.dropKey,),
            //const PopupButtonMenu(),
            //const DropdownButtonWidget(),
            Obx(() {
              switch(controller.currentItem.value){
                case DropDownMenu.DEFAULT:
                  return const PageDefault();

                case DropDownMenu.MENU1:
                  return const Page1();

                case DropDownMenu.MENU2:
                  return const Page2();
              }
            })
          ],
        )
    );
  }
}
