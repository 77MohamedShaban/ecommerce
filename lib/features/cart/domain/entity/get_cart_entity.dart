
import 'package:ecommerce_app/features/products_screen/domain/entites/product_entity.dart';

class GetCartEntity {
  final int? numOfCartItems;
  final DataEntity? data;

  GetCartEntity ({
    this.numOfCartItems,
    this.data,
  });

}

class DataEntity {
  final String? Id;
  final List<CartItemEntity>? cartItems;
  final int? totalCartPrice;

  DataEntity ({
    this.Id,
    this.cartItems,
    this.totalCartPrice,
  });

}

class CartItemEntity {
  final int? count;
  final String? Id;
  final ProductEntity? product;
  final int? price;

  CartItemEntity ({
    this.count,
    this.Id,
    this.product,
    this.price,
  });
}



