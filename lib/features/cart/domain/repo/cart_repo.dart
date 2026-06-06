import '../../../../core/resources/api_result.dart';
import '../../data/model/get_cart_response.dart';
import '../entity/get_cart_entity.dart';

abstract interface class CartRepo {
  Future<ApiResult<GetCartEntity>> fetchUserCart();
}