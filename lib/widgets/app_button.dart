
import 'package:buttons/widgets/buttons/primary_button.dart';
import 'package:buttons/widgets/buttons/secondary_button.dart';
import 'package:flutter/material.dart';

class AppButtonStyle{

  static Widget getPrimaryButton(String title,Function() onPress){
    return PrimaryButton(onPress: onPress, title: title);
  }
  static Widget getSecondaryButton(String title,Function() onPress){
    return SecondaryButton(onPress: onPress, title: title);
  }

}