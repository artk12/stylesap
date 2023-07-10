import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function() onPress;
  const PrimaryButton({super.key, required this.onPress, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                const MaterialStatePropertyAll<Color>(Color(0xffFFAB00)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          onPressed: onPress,
          child: Text(title,style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black))),
    );
  }
}
