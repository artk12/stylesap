import 'package:buttons/widgets/app_button.dart';
import 'package:buttons/widgets/app_message.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter button app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'IRANSANSX',
        useMaterial3: true,

      ),
      builder: (context, child) {
        return Directionality(textDirection: TextDirection.rtl, child: child!);
      },
      home: const MyHomePage(title: 'Flutter Demo button app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppButtonStyle.getPrimaryButton('تایید', true, () {
                  AppMessage.showErrorMessage(context, 'مغایرت کد ملی و شماره موبایل');
                }),
                const SizedBox(
                  height: 10,
                ),
                AppButtonStyle.getPrimaryButton('تایید', false, () {
                  AppMessage.showErrorMessage(context, 'مغایرت کد ملی و شماره موبایل');
                }),
                const SizedBox(
                  height: 30,
                ),
                AppButtonStyle.getSecondaryButton(
                    'ارسال مجدد کد ۱:۵۳ ', true, () {
                  AppMessage.showSuccessMessage(context, 'مغایرت کد ملی و شماره موبایل');
                }),
                const SizedBox(
                  height: 10,
                ),
                AppButtonStyle.getSecondaryButton(
                    'ارسال مجدد کد ۱:۵۳ ', false, () {
                  AppMessage.showWarningMessage(context, 'مغایرت کد ملی و شماره موبایل');
                }),
                const SizedBox(
                  height: 30,
                ),
                AppButtonStyle.getTransparentButton(
                    'ارسال مجدد کد ۱:۵۳ ', true, () {
                  AppMessage.showDefaultMessage(context, 'مغایرت کد ملی و شماره موبایل');
                }),
                const SizedBox(
                  height: 10,
                ),
                AppButtonStyle.getTransparentButton(

                    'ارسال مجدد کد ۱:۵۳ ', false, () {}),
                const SizedBox(
                  height: 20,
                ),
                AppButtonStyle.getInfoButton(
                    'اطلاعات همراه بانک', 'امکان استفاده از خدمات بانکداری دیجیتال و شعب',true, () {}),
                const SizedBox(
                  height: 10,
                ),
                AppButtonStyle.getInfoButton(
                    'اطلاعات همراه بانک', 'امکان استفاده از خدمات بانکداری دیجیتال و شعب',false, () {}),
              ],
            ),
          ),
        ));
  }
}
