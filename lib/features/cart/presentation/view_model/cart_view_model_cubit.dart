import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/resources/api_result.dart';
import 'package:ecommerce_app/features/cart/domain/entity/get_cart_entity.dart';
import 'package:ecommerce_app/features/cart/domain/usecase/get_cart_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'cart_view_model_state.dart';
@injectable
class CartViewModelCubit extends Cubit<CartViewModelState> {
  CartViewModelCubit(this.getCartUseCase) : super(CartViewModelInitial());
  GetCartUseCase getCartUseCase;
  fetchCart()async{
    emit(CartFetchLoading());
    var result = await getCartUseCase.call();
    switch(result){
      case Success<GetCartEntity>():{

        emit(CartFetchSuccess( result.response.data?.cartItems??[],result.response.data?.totalCartPrice??0));

      }
      case Failure<GetCartEntity>():{
        emit(CartFetchError(result.error));
      }
    }
  }
}
