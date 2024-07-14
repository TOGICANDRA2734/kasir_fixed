import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/presentation/checkout/checkout_notifier.dart';
import 'package:dewakoding_kasir/app/presentation/print_invoice/print_invoice_screen.dart';
import 'package:dewakoding_kasir/core/helper/global_helper.dart';
import 'package:dewakoding_kasir/core/widget/app_widget.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends AppWidget<CheckoutNotifier, OrderEntity, void> {
  CheckoutScreen({required super.param1});

  @override
  void checkVariable(BuildContext context) async {
    if (notifier.isDone) {
      await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PrintInvoiceScreen(param1: notifier.order,),
          ));
      Navigator.pop(context, true);
    }
  }

  @override
  AppBar? appBarBuild(BuildContext context) {
    return AppBar(
      title: Text('Checkout'),
    );
  }

  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            _buyerLayout(context),
            SizedBox(
              height: 20,
            ),
            _productLayout(context),
            SizedBox(
              height: 20,
            ),
            _paymentLayout(context),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.maxFinite,
              child: FilledButton(
                child: Text("Send"),
                onPressed: _onPressSend,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buyerLayout(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: GlobalHelper.getColorSchema(context).outlineVariant)),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Pembeli",
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.TITLE_LARGE),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(Icons.person),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Text(': ${notifier.order.name}',
                      style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.BODY_LARGE)))
            ],
          ),
          SizedBox(
            height: 5,
          ),
          // Row(
          //   children: [
          //     Icon((notifier.order.gender == 'male')
          //         ? Icons.male_rounded
          //         : Icons.female_rounded),
          //     SizedBox(
          //       width: 10,
          //     ),
          //     Expanded(
          //         child: Text(': ${notifier.order.gender}',
          //             style: GlobalHelper.getTextTheme(context,
          //                 appTextStyle: AppTextStyle.BODY_LARGE)))
          //   ],
          // ),
          // SizedBox(
          //   height: 5,
          // ),
          // Row(
          //   children: [
          //     Icon(Icons.mail_rounded),
          //     SizedBox(
          //       width: 10,
          //     ),
          //     Expanded(
          //         child: Text(
          //             ': ${(notifier.order.email?.isNotEmpty ?? false) ? notifier.order.email : '-'}',
          //             style: GlobalHelper.getTextTheme(context,
          //                 appTextStyle: AppTextStyle.BODY_LARGE)))
          //   ],
          // ),
          // SizedBox(
          //   height: 5,
          // ),
          // Row(
          //   children: [
          //     Icon(Icons.phone_rounded),
          //     SizedBox(
          //       width: 10,
          //     ),
          //     Expanded(
          //         child: Text(
          //             ': ${(notifier.order.phone?.isNotEmpty ?? false) ? notifier.order.phone : '-'}',
          //             style: GlobalHelper.getTextTheme(context,
          //                 appTextStyle: AppTextStyle.BODY_LARGE)))
          //   ],
          // ),
          // SizedBox(
          //   height: 5,
          // ),
          // Row(
          //   children: [
          //     Icon(Icons.child_care_rounded),
          //     SizedBox(
          //       width: 10,
          //     ),
          //     Expanded(
          //         child: Text(
          //             ': ${(notifier.order.birthday?.isNotEmpty ?? false) ? notifier.order.birthday : '-'}',
          //             style: GlobalHelper.getTextTheme(context,
          //                 appTextStyle: AppTextStyle.BODY_LARGE)))
          //   ],
          // ),
          // SizedBox(
          //   height: 5,
          // ),
          Text('Notes :',
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.BODY_LARGE)),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
                '${(notifier.order.notes?.isNotEmpty ?? false) ? notifier.order.notes : '-'}',
                style: GlobalHelper.getTextTheme(context,
                    appTextStyle: AppTextStyle.BODY_LARGE)),
          ),
        ],
      ),
    );
  }

  _productLayout(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: GlobalHelper.getColorSchema(context).outlineVariant)),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Produk dipesan",
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.TITLE_LARGE),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: notifier.order.items.length,
            itemBuilder: (context, index) {
              final item = notifier.order.items[index];
              return _itemProduct(context, item);
            },
          )
        ],
      ),
    );
  }

  _paymentLayout(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: GlobalHelper.getColorSchema(context).outlineVariant)),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            "Pembayaran",
            style: GlobalHelper.getTextTheme(context,
                appTextStyle: AppTextStyle.TITLE_LARGE),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            readOnly: true,
            controller: notifier.totalPriceController,
            decoration: InputDecoration(
              labelText: 'Total Harga',
              border: const OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: DropdownMenu<int>(
              initialSelection: notifier.initialPaymentMethod,
              expandedInsets: EdgeInsets.symmetric(horizontal: 1),
              label: const Text('Metode Pembayaran'),
              dropdownMenuEntries: notifier.paymentMethodListDropdown,
              controller: notifier.paymentMethodController,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: notifier.paidAmountController,
            decoration: InputDecoration(
              labelText: 'Nominal Bayar',
              border: const OutlineInputBorder(),
            ),
            onSubmitted: (value) => _onDoneInputPaidAmount(),
            onTapOutside: (event) => _onDoneInputPaidAmount(),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: notifier.changeAmountController,
            decoration: InputDecoration(
              labelText: 'Kembalian',
              border: const OutlineInputBorder(),
            ),
            readOnly: true,
          ),
        ],
      ),
    );
  }

  _itemProduct(BuildContext context, OrderItemEntity item) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
                  width: 0.75,
                  color: GlobalHelper.getColorSchema(context).outlineVariant),
              bottom: BorderSide(
                  width: 0.75,
                  color: GlobalHelper.getColorSchema(context).outlineVariant))),
      child: Column(
        children: [
          Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(item.productName)),
          Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text('${item.quantity} x ${item.unitPrice}'))
        ],
      ),
    );
  }

  _onDoneInputPaidAmount() {
    notifier.updateChangeAmount();
  }

  _onPressSend() {
    notifier.sendOrder();
  }
}
