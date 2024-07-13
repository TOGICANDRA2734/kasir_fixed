import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/presentation/entry_order/entry_order_screen.dart';
import 'package:dewakoding_kasir/app/presentation/order/order_notifier.dart';
import 'package:dewakoding_kasir/core/helper/date_time_helper.dart';
import 'package:dewakoding_kasir/core/helper/global_helper.dart';
import 'package:dewakoding_kasir/core/helper/number_helper.dart';
import 'package:dewakoding_kasir/core/widget/app_widget.dart';
import 'package:flutter/material.dart';

class OrderScreen extends AppWidget<OrderNotifier, void, void> {
  @override
  Widget bodyBuild(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
        itemCount: notifier.listOrder.length,
        itemBuilder: (context, index) {
          final item =
              notifier.listOrder[notifier.listOrder.length - 1 - index];
          return _itemLayout(context, item);
        },
      ),
    );
  }

  @override
  Widget? floatingActionButtonBuild(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _onPressAddOrder(context),
      child: Icon(Icons.add),
    );
  }

  _itemLayout(BuildContext context, OrderEntity item) {
    return GestureDetector(
      onTap: () => _onPressItem(context, item.id),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: GlobalHelper.getColorSchema(context).outlineVariant)),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.name,
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.TITLE_MEDIUM),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              NumberHelper.formatIDR(item.totalPrice ?? 0),
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.BODY_LARGE),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.greenAccent),
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  child: Text(item.paymentMethod?.name ?? '-'),
                ),
                Expanded(child: SizedBox()),
                Text(DateTimeHelper.formatDateTimeFromString(
                    dateTimeString: item.updatedAt!,
                    format: 'dd MMMM yyyy HH:mm:ss'))
              ],
            ),
          ],
        ),
      ),
    );
  }

  _onPressAddOrder(BuildContext context) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EntryOrderScreen(),
        ));
    notifier.init();
  }

  _onPressItem(BuildContext context, int? id) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EntryOrderScreen(
            param1: id,
          ),
        ));
    notifier.init();
  }
}
