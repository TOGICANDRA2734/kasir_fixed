import 'package:dewakoding_kasir/app/data/repository/auth_repository.dart';
import 'package:dewakoding_kasir/app/data/repository/category_repository.dart';
import 'package:dewakoding_kasir/app/data/repository/order_repository.dart';
import 'package:dewakoding_kasir/app/data/repository/payment_method_repository.dart';
import 'package:dewakoding_kasir/app/data/repository/product_repository.dart';
import 'package:dewakoding_kasir/app/data/repository/setting_repository.dart';
import 'package:dewakoding_kasir/app/data/source/auth_api_service.dart';
import 'package:dewakoding_kasir/app/data/source/order_api_service.dart';
import 'package:dewakoding_kasir/app/data/source/payment_method_api_service.dart';
import 'package:dewakoding_kasir/app/data/source/product_api_service.dart';
import 'package:dewakoding_kasir/app/data/source/setting_api_service.dart';
import 'package:dewakoding_kasir/app/domain/entity/order.dart';
import 'package:dewakoding_kasir/app/domain/repository/auth_repository.dart';
import 'package:dewakoding_kasir/app/domain/repository/category_repository.dart';
import 'package:dewakoding_kasir/app/domain/repository/order_repository.dart';
import 'package:dewakoding_kasir/app/domain/repository/payment_method_repository.dart';
import 'package:dewakoding_kasir/app/domain/repository/product_repository.dart';
import 'package:dewakoding_kasir/app/domain/repository/setting_repository.dart';
import 'package:dewakoding_kasir/app/domain/usecase/auth_login.dart';
import 'package:dewakoding_kasir/app/domain/usecase/category_get_active.dart';
import 'package:dewakoding_kasir/app/domain/usecase/order_get_all.dart';
import 'package:dewakoding_kasir/app/domain/usecase/order_get_by_id.dart';
import 'package:dewakoding_kasir/app/domain/usecase/order_insert.dart';
import 'package:dewakoding_kasir/app/domain/usecase/order_update.dart';
import 'package:dewakoding_kasir/app/domain/usecase/payment_method_get_all.dart';
import 'package:dewakoding_kasir/app/domain/usecase/product_get_all.dart';
import 'package:dewakoding_kasir/app/domain/usecase/product_get_by_barcode.dart';
import 'package:dewakoding_kasir/app/domain/usecase/product_get_by_id.dart';
import 'package:dewakoding_kasir/app/domain/usecase/setting_get.dart';
import 'package:dewakoding_kasir/app/presentation/add_item_order/add_item_order_notifier.dart';
import 'package:dewakoding_kasir/app/presentation/checkout/checkout_notifier.dart';
import 'package:dewakoding_kasir/app/presentation/entry_order/entry_order_notifier.dart';
import 'package:dewakoding_kasir/app/presentation/entry_product/entry_product_notifier.dart';
import 'package:dewakoding_kasir/app/presentation/login/login_notifier.dart';
import 'package:dewakoding_kasir/app/presentation/main/main_notifier.dart';
import 'package:dewakoding_kasir/app/presentation/order/order_notifier.dart';
import 'package:dewakoding_kasir/app/presentation/print_invoice/print_invoice_notifier.dart';
import 'package:dewakoding_kasir/app/presentation/product/product_notifier.dart';
import 'package:dewakoding_kasir/core/network/app_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final sl = GetIt.instance;

Future<void> initDependency() async {
  //dio
  Dio dio = Dio();
  dio.interceptors.add(AppInterceptor());
  dio.interceptors.add(PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    compact: false,
  ));
  sl.registerSingleton<Dio>(dio);

  //apiService
  sl.registerSingleton<AuthApiService>(AuthApiService(sl()));
  sl.registerSingleton<ProductApiService>(ProductApiService(sl()));
  sl.registerSingleton<OrderApiService>(OrderApiService(sl()));
  sl.registerSingleton<PaymentMethodApiService>(PaymentMethodApiService(sl()));
  sl.registerSingleton<SettingApiService>(SettingApiService(sl()));

  //repository
  sl.registerSingleton<CategoryRepository>(CategoryRepositoryImpl());
  sl.registerSingleton<ProductRepository>(ProductRepositoryImpl(sl()));
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl(sl()));
  sl.registerSingleton<OrderRepository>(OrderRepositoryImpl(sl()));
  sl.registerSingleton<PaymentMethodRepository>(
      PaymentMethodRepositoryImpl(sl()));
  sl.registerSingleton<SettingRepository>(SettingRepositoryImpl(sl()));

  //usecase
  sl.registerSingleton<CategoryGetActiveUseCase>(
      CategoryGetActiveUseCase(sl()));
  sl.registerSingleton<ProductGetAllUseCase>(ProductGetAllUseCase(sl()));
  sl.registerSingleton<ProductGetByIdUseCase>(ProductGetByIdUseCase(sl()));
  sl.registerSingleton<ProductGetByBarcodeUseCase>(
      ProductGetByBarcodeUseCase(sl()));
  sl.registerSingleton<AuthLoginUseCase>(AuthLoginUseCase(sl()));
  sl.registerSingleton<OrderGetAllUseCase>(OrderGetAllUseCase(sl()));
  sl.registerSingleton<OrderGetByIdUseCase>(OrderGetByIdUseCase(sl()));
  sl.registerSingleton<OrderInsertUseCase>(OrderInsertUseCase(sl()));
  sl.registerSingleton<OrderUpdateUseCase>(OrderUpdateUseCase(sl()));
  sl.registerSingleton<PaymentMethodGetAllUseCase>(
      PaymentMethodGetAllUseCase(sl()));
  sl.registerSingleton<SettingGetUseCase>(SettingGetUseCase(sl()));

  //provider
  sl.registerFactoryParam<LoginNotifier, void, void>(
    (p1, p2) => LoginNotifier(sl()),
  );
  sl.registerFactoryParam<MainNotifier, void, void>(
    (p1, p2) => MainNotifier(),
  );
  sl.registerFactoryParam<ProductNotifier, void, void>(
    (p1, p2) => ProductNotifier(sl()),
  );
  sl.registerFactoryParam<EntryProductNotifier, int?, void>(
    (p1, p2) => EntryProductNotifier(sl(), sl(), p1),
  );
  sl.registerFactoryParam<OrderNotifier, void, void>(
    (p1, p2) => OrderNotifier(sl()),
  );
  sl.registerFactoryParam<EntryOrderNotifier, int?, void>(
    (p1, p2) => EntryOrderNotifier(sl(), sl(), p1),
  );
  sl.registerFactoryParam<AddItemOrderNotifier, List<OrderItemEntity>, void>(
    (p1, p2) => AddItemOrderNotifier(sl(), p1),
  );
  sl.registerFactoryParam<CheckoutNotifier, OrderEntity, void>(
    (p1, p2) => CheckoutNotifier(sl(), sl(), sl(), p1),
  );
  sl.registerFactoryParam<PrintInvoiceNotifier, OrderEntity, void>(
    (p1, p2) => PrintInvoiceNotifier(sl(), p1),
  );
}
