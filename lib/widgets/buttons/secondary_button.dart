import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String title;
  final Function() onPress;
  const SecondaryButton(
      {super.key, required this.onPress, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
          style: ButtonStyle(
            elevation: const MaterialStatePropertyAll<double>(0),
            backgroundColor: const MaterialStatePropertyAll<Color>(Color(
                0x0f1e420f)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          onPressed: onPress,
          child: Text(title,style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),)),
    );
  }
}
