import 'package:dewakoding_kasir/app/presentation/login/login_screen.dart';
import 'package:dewakoding_kasir/app/presentation/main/main_notifier.dart';
import 'package:dewakoding_kasir/app/presentation/order/order_screen.dart';
import 'package:dewakoding_kasir/app/presentation/product/product_screen.dart';
import 'package:dewakoding_kasir/core/helper/global_helper.dart';
import 'package:dewakoding_kasir/core/helper/shared_preferences_helper.dart';
import 'package:dewakoding_kasir/core/widget/app_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends AppWidget<MainNotifier, void, void> {
  @override
  AppBar? appBarBuild(BuildContext context) {
    List<String> _listTitleAppBar = ['Product', 'Order'];
    return AppBar(
      title: Text(_listTitleAppBar[notifier.selectedIndexNavBar]),
    );
  }

  @override
  Widget bodyBuild(BuildContext context) {
    List<Widget> _listDestinationNavBar = [ProductScreen(), OrderScreen()];

    return _listDestinationNavBar[notifier.selectedIndexNavBar];
  }

  @override
  Widget? drawerBuild(BuildContext context) {
    List<Widget> _listMenuNavBar = [
      DrawerHeader(
          child: Column(
        children: [
          Expanded(
            child: CircleAvatar(
              radius: double.maxFinite,
              child: Text(
                notifier.initialName,
                style: GlobalHelper.getTextTheme(context,
                        appTextStyle: AppTextStyle.DISPLAY_MEDIUM)
                    ?.copyWith(
                        color: GlobalHelper.getColorSchema(context).surface),
              ),
              backgroundColor: Colors.redAccent,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(notifier.name)
        ],
      )),
      ListTile(
        dense: true,
        title: Text(
          "Product",
        ),
      ),
      NavigationDrawerDestination(
        label: Text("Product"),
        icon: Icon(Icons.shopping_bag_outlined),
        selectedIcon: Icon(Icons.shopping_bag),
      ),
      NavigationDrawerDestination(
        label: Text("Order"),
        icon: Icon(Icons.shopping_cart_outlined),
        selectedIcon: Icon(Icons.shopping_cart),
      ),
      TextButton(
          onPressed: () => _onPressLogout(context), child: Text('Logout'))
    ];
    return NavigationDrawer(
        onDestinationSelected: (selectedIndex) {
          Navigator.pop(context);
          notifier.selectedIndexNavBar = selectedIndex;
        },
        selectedIndex: notifier.selectedIndexNavBar,
        children: _listMenuNavBar);
  }

  _onPressLogout(BuildContext context) async {
    await SharedPreferencesHelper.logout();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
        (route) => false);
  }
}
