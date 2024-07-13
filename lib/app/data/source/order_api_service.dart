import 'package:dewakoding_kasir/core/constant/constant.dart';
import 'package:dewakoding_kasir/core/network/data_state.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'order_api_service.g.dart';

@RestApi()
abstract class OrderApiService {
  factory OrderApiService(Dio dio) {
    return _OrderApiService(dio);
  }

  @GET('${ORDER_URL_PATH}')
  Future<HttpResponse<DataState>> getAll();

  @GET('${ORDER_URL_PATH}/{id}')
  Future<HttpResponse<DataState>> getById({@Path('id') required int id});

  @POST('${ORDER_URL_PATH}')
  Future<HttpResponse<DataState>> insert(
      {@Body() required Map<String, dynamic> param});

  @PUT('${ORDER_URL_PATH}/{id}')
  Future<HttpResponse<DataState>> update(
      {@Path('id') required int id,
      @Body() required Map<String, dynamic> param});
}
