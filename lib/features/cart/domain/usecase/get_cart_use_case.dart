import 'package:ecommerce_app/features/cart/domain/repo/cart_repo.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/resources/api_result.dart';
import '../entity/get_cart_entity.dart';
@singleton
class GetCartUseCase {
  CartRepo cartRepo;
  GetCartUseCase(this.cartRepo);

  Future<ApiResult<GetCartEntity>> call()=>cartRepo.fetchUserCart();
}