import 'package:ecommerce_app/features/auth/data/model/auth_response/auth_response.dart';
import 'package:ecommerce_app/features/cart/data/model/get_cart_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
part 'cart_client.g.dart';
@singleton
@RestApi(baseUrl: 'https://ecommerce.routemisr.com')
abstract class CartClient {
  @factoryMethod
  factory CartClient(Dio dio) = _CartClient;

  @GET("/api/v1/cart")
  Future<GetCartResponse> getCart(@Header("token") String token );

}