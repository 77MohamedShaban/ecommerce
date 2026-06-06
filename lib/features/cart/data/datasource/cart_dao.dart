import 'package:ecommerce_app/core/resources/api_result.dart';
import 'package:ecommerce_app/features/cart/data/model/get_cart_response.dart';

abstract interface class CartDao {
  Future<ApiResult<GetCartResponse>> fetchUserCart();
}