import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/presentation/add_item_order/add_item_order_screen.dart';
import 'package:dewakoding_kasir/app/presentation/checkout/checkout_screen.dart';
import 'package:dewakoding_kasir/app/presentation/entry_order/entry_order_notifier.dart';
import 'package:dewakoding_kasir/core/helper/dialog_helper.dart';
import 'package:dewakoding_kasir/core/helper/global_helper.dart';
import 'package:dewakoding_kasir/core/helper/number_helper.dart';
import 'package:dewakoding_kasir/core/widget/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EntryOrderScreen extends AppWidget<EntryOrderNotifier, int, void> {
  EntryOrderScreen({super.param1});

  @override
  AppBar? appBarBuild(BuildContext context) {
    return AppBar(
      title: Text((param1 != null) ? 'Update Order' : 'Create Order'),
      actions: [
        IconButton(
            onPressed: () => _showDialogBuyyer(context),
            icon: Icon(Icons.person))
      ],
    );
  }

  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    _itemOrderedLayout(context),
                  ],
                )),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.maxFinite,
            child: FilledButton(
              child: Text('Checkout'),
              onPressed: () => _onPressCheckout(context),
            ),
          )
        ],
      ),
    );
  }

  @override
  void checkVariable(BuildContext context) {
    if (param1 != null && notifier.errorBuyer.isEmpty) {
      notifier.isShowDialogBuyyer = false;
    } else if (notifier.isShowDialogBuyyer || notifier.errorBuyer.isNotEmpty) {
      notifier.isShowDialogBuyyer = false;
      _showDialogBuyyer(context);
    }
  }

  _itemOrderedLayout(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Produk Dipesan",
              style: GlobalHelper.getTextTheme(context,
                  appTextStyle: AppTextStyle.TITLE_LARGE),
            ),
            Expanded(child: SizedBox()),
            IconButton.outlined(
                onPressed: _onPressBarcode,
                icon: Icon(Icons.qr_code_scanner_outlined)),
            SizedBox(
              width: 5,
            ),
            IconButton.filled(
              icon: Icon(Icons.playlist_add),
              onPressed: () => _onPressAddProduct(context),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) => SizedBox(
            height: 5,
          ),
          itemCount: notifier.listOrderItem.length,
          itemBuilder: (context, index) {
            final item = notifier.listOrderItem[index];
            return _itemLayout(context, item);
          },
        ),
      ],
    );
  }

  _itemLayout(BuildContext context, OrderItemEntity item) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(color: GlobalHelper.getColorSchema(context).outline)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.productName,
            style: GlobalHelper.getTextTheme(context,
                appTextStyle: AppTextStyle.TITLE_MEDIUM),
          ),
          Row(
            children: [
              Text(
                NumberHelper.formatIDR(item.unitPrice),
                style: GlobalHelper.getTextTheme(context,
                    appTextStyle: AppTextStyle.BODY_LARGE),
              ),
              Expanded(child: SizedBox()),
              IconButton.outlined(
                  onPressed: () => _onPressRemoveQuantity(item),
                  icon: Icon(Icons.remove)),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: GlobalHelper.getColorSchema(context).outline)),
                child: Center(
                  child: Text(
                    '${item.quantity}',
                    style: GlobalHelper.getTextTheme(context,
                        appTextStyle: AppTextStyle.BODY_LARGE),
                  ),
                ),
              ),
              IconButton.outlined(
                  onPressed: () => _onPressAddQuantity(item),
                  icon: Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }

  _showDialogBuyyer(BuildContext context) {
    DialogHelper.showBottomSheetDialog(
        context: context,
        canDismiss: false,
        title: "Pembeli",
        content: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _primaryInfoLayout(context),
              SizedBox(
                height: 20,
              ),
              // _additionalInfoLayout(context),
              // SizedBox(
              //   height: 20,
              // ),
              Container(
                width: double.maxFinite,
                child: FilledButton(
                  child: Text("Simpan"),
                  onPressed: () => _onPressSaveBuyyer(context),
                ),
              )
            ],
          ),
        ));
  }

  _primaryInfoLayout(BuildContext context) {
    return Column(
      children: [
        Text(
          "Info Utama",
          style: GlobalHelper.getTextTheme(context,
              appTextStyle: AppTextStyle.TITLE_LARGE),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: notifier.nameController,
          decoration: InputDecoration(
              labelText: 'Nama',
              border: const OutlineInputBorder(),
              errorText: notifier.errorBuyer[EntryOrderNotifier.NAME]),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: notifier.noMejaController,
          decoration: InputDecoration(
              labelText: 'No Meja',
              border: const OutlineInputBorder(),
              errorText: notifier.errorBuyer[EntryOrderNotifier.NOMEJA]),
        ),
        // SizedBox(
        //   width: double.infinity,
        //   child: DropdownMenu<String>(
        //     initialSelection: notifier.initialGender,
        //     expandedInsets: EdgeInsets.symmetric(horizontal: 1),
        //     label: const Text('Gender'),
        //     dropdownMenuEntries: notifier.genderListDropdown,
        //     controller: notifier.genderController,
        //     errorText: notifier.errorBuyer[EntryOrderNotifier.GENDER],
        //   ),
        // ),
        SizedBox(
          height: 10,
        ),
        TextField(
          controller: notifier.noteController,
          decoration: InputDecoration(
            labelText: 'Notes',
            border: const OutlineInputBorder(),
          ),
          maxLines: null,
        ),
      ],
    );
  }

  // _additionalInfoLayout(BuildContext context) {
  //   return Column(
  //     children: [
  //       Text(
  //         "Info Tambahan",
  //         style: GlobalHelper.getTextTheme(context,
  //             appTextStyle: AppTextStyle.TITLE_LARGE),
  //       ),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       TextField(
  //         controller: notifier.emailController,
  //         keyboardType: TextInputType.emailAddress,
  //         decoration: InputDecoration(
  //           labelText: 'Email',
  //           border: const OutlineInputBorder(),
  //         ),
  //       ),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       TextField(
  //         controller: notifier.phoneController,
  //         keyboardType: TextInputType.phone,
  //         decoration: InputDecoration(
  //             labelText: 'Phone', border: const OutlineInputBorder()),
  //       ),
  //       SizedBox(
  //         height: 10,
  //       ),
  //       TextField(
  //         readOnly: true,
  //         onTap: () => _onPressBirthDayField(context),
  //         controller: notifier.birthDayController,
  //         decoration: InputDecoration(
  //             labelText: 'Birthday', border: const OutlineInputBorder()),
  //       ),
  //     ],
  //   );
  // }

  _onPressSaveBuyyer(BuildContext context) {
    Navigator.pop(context);
    notifier.validateBuyer();
  }

  _onPressAddProduct(BuildContext context) async {
    List<OrderItemEntity>? items = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              AddItemOrderScreen(param1: notifier.listOrderItem),
        ));
    if (items != null) notifier.updateItems(items);
  }

  _onPressAddQuantity(OrderItemEntity item) {
    notifier.updateQuantity(item, item.quantity + 1);
  }

  _onPressRemoveQuantity(OrderItemEntity item) {
    notifier.updateQuantity(item, item.quantity - 1);
  }

  _onPressCheckout(BuildContext context) async {
    bool? isDone = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CheckoutScreen(
            param1: notifier.order,
          ),
        ));
    if (isDone == true) Navigator.pop(context);
  }

  // _onPressBirthDayField(BuildContext context) async {
  //   DateTime? birthDay = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(DateTime.now().year - 100),
  //     lastDate: DateTime.now(),
  //   );

  //   // notifier.birthDayController.text =
  //   //     '${DateFormat('yyyy-MM-dd').format(birthDay!)}';
  // }

  _onPressBarcode() {
    notifier.scan();
  }
}
