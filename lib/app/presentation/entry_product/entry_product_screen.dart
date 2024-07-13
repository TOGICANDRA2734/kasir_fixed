import 'package:dewakoding_kasir/app/presentation/entry_product/entry_product_notifier.dart';
import 'package:dewakoding_kasir/core/widget/app_widget.dart';
import 'package:dewakoding_kasir/core/widget/image_network_app_widget.dart';
import 'package:flutter/material.dart';

class EntryProductScreen extends AppWidget<EntryProductNotifier, int?, void> {
  EntryProductScreen({super.param1});

  @override
  AppBar? appBarBuild(BuildContext context) {
    return AppBar(
        title: Text((param1 != null) ? "Update Product" : "Add Product"));
  }

  @override
  Widget bodyBuild(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ImageNetworkAppWidget(
            imageUrl: notifier.imageUrl ?? '',
            height: 150,
            witdh: 150,
          ),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Text('Active?'),
            SizedBox(
              width: 10,
            ),
            Switch(
              thumbIcon: WidgetStateProperty.resolveWith<Icon?>((states) {
                if (states.contains(WidgetState.selected)) {
                  return const Icon(Icons.check);
                }
                return const Icon(Icons.close);
              }),
              value: notifier.isActive,
              onChanged: (bool value) {
                notifier.isActive = value;
              },
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: notifier.nameController,
            decoration: InputDecoration(
              labelText: 'Name',
              border: const OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: DropdownMenu<String>(
              initialSelection: notifier.initialCategory,
              expandedInsets: EdgeInsets.symmetric(horizontal: 1),
              label: const Text('Category'),
              dropdownMenuEntries: notifier.categoryListDropdown,
              controller: notifier.categoryController,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: notifier.barCodeController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Barcode Number',
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton.outlined(
                onPressed: () => _onPressScanQrCode(context),
                icon: Icon(Icons.qr_code_scanner),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: notifier.stockController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Stock',
              border: const OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: notifier.priceController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefix: Text("Rp."),
              labelText: 'Price',
              border: const OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.maxFinite,
            child: FilledButton(
              child: Text("Send"),
              onPressed: _onPressSend,
            ),
          )
        ],
      ),
    ));
  }

  _onPressScanQrCode(BuildContext context) {
    notifier.scan();
  }

  _onPressSend() {
    notifier.send();
  }
}
