part of 'cart_view_model_cubit.dart';

@immutable
sealed class CartViewModelState {}

final class CartViewModelInitial extends CartViewModelState {}
final class CartFetchLoading extends CartViewModelState {}
final class CartFetchSuccess extends CartViewModelState {
  List<CartItemEntity> cartItems;
  int totalPrice;
  CartFetchSuccess(this.cartItems,this.totalPrice);
}
final class CartFetchError extends CartViewModelState {
  String error;
  CartFetchError(this.error);
}
