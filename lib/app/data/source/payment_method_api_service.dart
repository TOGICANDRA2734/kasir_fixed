import 'package:dewakoding_kasir/core/constant/constant.dart';
import 'package:dewakoding_kasir/core/network/app_interceptor.dart';
import 'package:dewakoding_kasir/core/network/data_state.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'payment_method_api_service.g.dart';

@RestApi()
abstract class PaymentMethodApiService {
  factory PaymentMethodApiService(Dio dio) {
    return _PaymentMethodApiService(dio);
  }

  @GET('${PAYMENT_METHOD_URL_PATH}')
  Future<HttpResponse<DataState>> getAll();
}
