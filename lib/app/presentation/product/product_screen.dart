import 'package:dewakoding_kasir/app/domain/entity/product.dart';
import 'package:dewakoding_kasir/app/presentation/entry_product/entry_product_screen.dart';
import 'package:dewakoding_kasir/app/presentation/product/product_notifier.dart';
import 'package:dewakoding_kasir/core/helper/global_helper.dart';
import 'package:dewakoding_kasir/core/helper/number_helper.dart';
import 'package:dewakoding_kasir/core/widget/app_widget.dart';
import 'package:dewakoding_kasir/core/widget/image_network_app_widget.dart';
import 'package:flutter/material.dart';

class ProductScreen extends AppWidget<ProductNotifier, void, void> {
  @override
  Widget bodyBuild(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: notifier.listProduct.length,
        itemBuilder: (context, index) {
          final item = notifier.listProduct[index];
          return _itemLayuot(context, item);
        },
      ),
    );
  }

  // @override
  // Widget? floatingActionButtonBuild(BuildContext context) {
  //   return FloatingActionButton(
  //     onPressed: () => _onPressAddProduct(context),
  //     child: Icon(Icons.add),
  //   );
  // }

  _itemLayuot(BuildContext context, ProductEntity item) {
    return GestureDetector(
      // onTap: () => _onPressItem(context, item.id),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                width: 2,
                color: GlobalHelper.getColorSchema(context).outlineVariant)),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ImageNetworkAppWidget(
                imageUrl: item.imageUrl ?? '',
                witdh: 100,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.TITLE_MEDIUM),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  NumberHelper.formatIDR(item.price),
                  style: GlobalHelper.getTextTheme(context,
                      appTextStyle: AppTextStyle.BODY_LARGE),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(child: Text('Stock : ${item.stock}')),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (item.isActive)
                            ? Colors.greenAccent[200]!
                            : Colors.redAccent[200]!,
                      ),
                      child: Text((item.isActive) ? "Active" : "Non-Active"),
                    )
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  _onPressAddProduct(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EntryProductScreen(),
        ));
  }
  _onPressItem(BuildContext context, int id) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EntryProductScreen(param1: id,),
        ));
  }
}
