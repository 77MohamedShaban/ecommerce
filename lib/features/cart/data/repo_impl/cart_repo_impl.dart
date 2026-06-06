import 'package:ecommerce_app/core/resources/api_result.dart';
import 'package:ecommerce_app/core/resources/internet_checker.dart';
import 'package:ecommerce_app/features/cart/data/datasource/cart_dao.dart';
import 'package:ecommerce_app/features/cart/data/model/get_cart_response.dart';

import 'package:ecommerce_app/features/cart/domain/entity/get_cart_entity.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repo/cart_repo.dart';
@Injectable(as: CartRepo)
class CartRepoImpl implements CartRepo{
  CartDao cartDao;
  CartRepoImpl(this.cartDao);
  @override
  Future<ApiResult<GetCartEntity>> fetchUserCart() async{
    bool isConnected = await InternetChecker.checkConnection();
    if(isConnected){
      var result = await cartDao.fetchUserCart();
      switch(result){

        case Success<GetCartResponse>():{
          return Success(result.response.toEntity());
        }
        case Failure<GetCartResponse>():{
          return Failure(result.error);
        }
      }
    }else{
      return Failure("No Internet Connection");
    }
  }

}