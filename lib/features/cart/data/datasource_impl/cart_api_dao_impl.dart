import 'package:ecommerce_app/core/remote/local/prefs_manager.dart';
import 'package:ecommerce_app/core/resources/api_result.dart';
import 'package:ecommerce_app/features/cart/data/api/cart_client.dart';
import 'package:ecommerce_app/features/cart/data/datasource/cart_dao.dart';
import 'package:ecommerce_app/features/cart/data/model/get_cart_response.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: CartDao)
class CartApiDaoImpl implements CartDao{
  CartClient client;
  CartApiDaoImpl(this.client);
  @override
  Future<ApiResult<GetCartResponse>> fetchUserCart() async{
    try{
      var response =  await client.getCart(PrefsManager.getToken());
      if(response.statusMsg==null){
        return Success(response);
      }else{
        return Failure(response.message!);
      }
    }catch(e){
      return Failure(e.toString());
    }
  }

}