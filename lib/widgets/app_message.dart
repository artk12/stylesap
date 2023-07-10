import 'package:flutter/material.dart';

class AppMessage {

  static showErrorMessage(BuildContext context, String message) {
    var theme = Theme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: const Color(0xffD20101),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(20),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              message,
              style: theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
            ),
             GestureDetector(onTap: (){
               ScaffoldMessenger.of(context).hideCurrentSnackBar();
             },child: const Icon(Icons.clear,color: Colors.white,)),
          ],
        ),
      ),
    );
  }
  static showSuccessMessage(BuildContext context, String message) {
    var theme = Theme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(20),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              message,
              style: theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
            ),
             GestureDetector(onTap: (){
               ScaffoldMessenger.of(context).hideCurrentSnackBar();
             },child: const Icon(Icons.clear,color: Colors.white,)),
          ],
        ),
      ),
    );
  }
  static showWarningMessage(BuildContext context, String message) {
    var theme = Theme.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.deepOrangeAccent,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.all(20),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              message,
              style: theme.textTheme.bodyMedium!.copyWith(color: Colors.white),
            ),
             GestureDetector(onTap: (){
               ScaffoldMessenger.of(context).hideCurrentSnackBar();
             },child: const Icon(Icons.clear,color: Colors.white,)),
          ],
        ),
      ),
    );
  }
}
