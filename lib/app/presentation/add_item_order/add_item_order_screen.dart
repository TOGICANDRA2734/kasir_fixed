import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/presentation/add_item_order/add_item_order_notifier.dart';
import 'package:dewakoding_kasir/core/helper/global_helper.dart';
import 'package:dewakoding_kasir/core/helper/number_helper.dart';
import 'package:dewakoding_kasir/core/widget/app_widget.dart';
import 'package:flutter/material.dart';

class AddItemOrderScreen
    extends AppWidget<AddItemOrderNotifier, List<OrderItemEntity>, void> {
  AddItemOrderScreen({required super.param1}) : super();

  @override
  AppBar? appBarBuild(BuildContext context) {
    return AppBar(
      title: Text("Add Product"),
    );
  }

  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: notifier.searchProductController,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      labelText: 'Search Product',
                      hintText: 'Find name or barcode',
                      border: const OutlineInputBorder(),
                      suffix: IconButton(icon: Icon(Icons.clear),onPressed: _onPressClearSearchText,)
                    ),
                    onSubmitted: (text) => _onSubmitedSearchProduct(context),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton.outlined(
                    onPressed: _onPressBarcode,
                    icon: Icon(Icons.qr_code_scanner_outlined)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
                itemCount: notifier.listOrderItem.length,
                itemBuilder: (context, index) {
                  final item = notifier.listOrderItem[index];
                  return _itemLayout(context, item);
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        width: 0.5,
                        color: GlobalHelper.getColorSchema(context).primary))),
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
            width: double.maxFinite,
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  '${notifier.totalProduct} item',
                  style: GlobalHelper.getTextTheme(context,
                          appTextStyle: AppTextStyle.TITLE_LARGE)
                      ?.copyWith(fontWeight: FontWeight.bold),
                )),
                Expanded(
                  child: FilledButton(
                    child: Text("Simpan"),
                    onPressed: () => _onPressSave(context),
                  ),
                )
              ],
            ),
          )
        ],
      ),
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
                  onPressed: (item.quantity > 0)
                      ? () => _onPressRemoveQuantity(item)
                      : null,
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

  _onPressAddQuantity(OrderItemEntity item) {
    notifier.updateQuantity(item, item.quantity + 1);
  }

  _onPressRemoveQuantity(OrderItemEntity item) {
    notifier.updateQuantity(item, item.quantity - 1);
  }

  _onPressSave(BuildContext context) {
    Navigator.pop(context, notifier.listOrderItemFilteredQuantity);
  }

  _onSubmitedSearchProduct(BuildContext context) {
    notifier.onSubmitedSearchProduct();
  }

  _onPressBarcode() {
    notifier.scan();
  }

  _onPressClearSearchText(){
    notifier.clearSearchText();
  }
}
