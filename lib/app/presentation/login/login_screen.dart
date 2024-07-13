import 'package:dewakoding_kasir/app/presentation/login/login_notifier.dart';
import 'package:dewakoding_kasir/app/presentation/main/main_screen.dart';
import 'package:dewakoding_kasir/core/helper/dialog_helper.dart';
import 'package:dewakoding_kasir/core/helper/global_helper.dart';
import 'package:dewakoding_kasir/core/widget/app_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends AppWidget<LoginNotifier, void, void> {
  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: IconButton(
                icon: Icon(Icons.link),
                onPressed: () => _onPressSettingBaseUrl(context),
              ),
            ),
            Expanded(
                child: Center(
                    child: Text(
              "Sekawan Kopi Tarik",
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.HEADLINE_LARGE),
            ))),
            TextField(
              controller: notifier.emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: const OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: notifier.passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: const OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                width: double.maxFinite,
                child: FilledButton(
                    onPressed: _onPressLogin, child: Text("Login"))),
            SizedBox(
              height: 75,
            )
          ],
        ),
      ),
    );
  }

  @override
  void checkVariable(BuildContext context) {
    if (notifier.isLogined) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainScreen(),
          ));
    }
  }

  _onPressSettingBaseUrl(BuildContext context) async {
    await notifier.getBaseUrl();
    DialogHelper.showBottomSheetDialog(
        context: context,
        title: "Pengaturan Base URL",
        content: Column(
          children: [
            TextField(
              controller: notifier.baseUrlController,
              decoration: InputDecoration(
                labelText: 'Base URL',
                border: const OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: double.maxFinite,
                child: FilledButton(
                    onPressed: () => _onPressSaveBaseUrl(context), child: Text("Simpan Base URL"))),
          ],
        ));
  }

  _onPressLogin() {
    notifier.login();
  }

  _onPressSaveBaseUrl(context) async {
    await notifier.saveBaseUrl();
    Navigator.pop(context);
  }
}
