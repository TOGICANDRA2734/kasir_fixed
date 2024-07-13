import 'package:dewakoding_kasir/core/helper/global_helper.dart';
import 'package:flutter/material.dart';

class DialogHelper {
  static showSnackBar({required BuildContext context, required String text}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
    ));
  }

  static showAlertDialog(BuildContext context, Icon icon, Text title,
      Widget content, List<Widget> listAction) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: icon,
        title: title,
        content: content,
        actions: listAction,
      ),
    );
  }

  static showBottomSheetDialog(
      {required BuildContext context,
      required String title,
      bool canDismiss = true,
      required Widget content}) {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      isDismissible: canDismiss,
      enableDrag: canDismiss,
      builder: (context) => SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
              right: 20,
              left: 20,
              top: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom + 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.TITLE_MEDIUM)
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  (canDismiss)
                      ? IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.clear))
                      : SizedBox()
                ],
              ),
              SizedBox(
                height: 20,
              ),
              content
            ],
          ),
        ),
      ),
    );
  }

  static showFullScreenDialog(
      {required BuildContext context,
      required String title,
      bool canDismiss = true,
      required Widget content}) {
    showDialog<void>(
      context: context,
      useSafeArea: true,
      barrierDismissible: canDismiss,
      builder: (context) => Dialog.fullscreen(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,
                      style: GlobalHelper.getTextTheme(context,
                              appTextStyle: AppTextStyle.TITLE_MEDIUM)
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  (canDismiss)
                      ? IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.clear))
                      : SizedBox()
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(child: content)
            ],
          ),
        ),
      ),
    );
  }
}
