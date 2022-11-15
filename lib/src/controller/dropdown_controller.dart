import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


enum DropDownMenu{
  DEFAULT, MENU1, MENU2,
}

extension DropDownMenuExtension on DropDownMenu{
  String get name{
    switch(this){
      case DropDownMenu.DEFAULT:
        return '기본메뉴';

      case DropDownMenu.MENU1:
        return 'Menu1';

      case DropDownMenu.MENU2:
        return 'Menu2';
    }
  }
}

class DropdownController extends GetxController{
  Rx<DropDownMenu> currentItem = DropDownMenu.DEFAULT.obs;

  final dropKey = GlobalKey();

  void changeDropDownMenu(int? itemIndex){
    var selectedItem =  DropDownMenu.values.where((menu) => menu.index == itemIndex).first;
    currentItem(selectedItem);
  }

  double get dropdownPositionY {
    var box = dropKey.currentContext!.findRenderObject()!;
    var translation = box.getTransformTo(null).getTranslation();
    return box.paintBounds.shift(Offset(translation.x, translation.y)).bottomCenter.dy;
  }
}