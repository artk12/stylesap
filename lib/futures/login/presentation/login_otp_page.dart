
import 'package:buttons/core/utils/extension.dart';
import 'package:buttons/widgets/app_message.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/buttons/primary_button.dart';
import '../../../core/widgets/buttons/secondary_button.dart';
import '../../../core/widgets/md_app_bar.dart';
import '../../../core/widgets/md_otp_textfield.dart';

class LoginOtpPage extends StatelessWidget {
  const LoginOtpPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const MdCustomAppBar(),
      body: Center(
        child: SizedBox(
          width: 500,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: ListView(
                    children: [
                      const SizedBox(height: 54),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'کد ارسال شده به شماره موبایل را وارد نمایید.',
                          style: context.textTheme.subtitle1,
                        ),
                      ),
                      const SizedBox(height: 24),
                      MdOtpField(onSubmit: (value) {})
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: SecondaryButton(
                          onPress: () {},
                          title: 'ارسال مجدد کد ۱:۵۳',
                          isActive: false,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: double.maxFinite,
                        child: PrimaryButton(
                          title: 'تایید',
                          isActive: true,
                          onPress: () {
                            AppMessage.showErrorMessage(context, 'کد وارد شده اشتباه است');
                          },
                        ),
                      ),
                    ],
                  ),
                )
                // const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}