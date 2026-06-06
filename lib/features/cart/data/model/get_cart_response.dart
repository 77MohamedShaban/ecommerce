import 'package:ecommerce_app/features/cart/domain/entity/get_cart_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../products_screen/data/models/products_response.dart';

part 'get_cart_response.g.dart';

@JsonSerializable()
class GetCartResponse {
  @JsonKey(name: "status")
  final String? status;
  @JsonKey(name: "statusMsg")
  final String? statusMsg;
  @JsonKey(name: "message")
  final String? message;
  @JsonKey(name: "numOfCartItems")
  final int? numOfCartItems;
  @JsonKey(name: "cartId")
  final String? cartId;
  @JsonKey(name: "data")
  final DataModel? data;

  GetCartResponse ({
    this.status,
    this.numOfCartItems,
    this.cartId,
    this.data,
    this.statusMsg,
    this.message
  });

  factory GetCartResponse.fromJson(Map<String, dynamic> json) {
    return _$GetCartResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GetCartResponseToJson(this);
  }

  GetCartEntity toEntity(){
    return GetCartEntity(data: data?.toEntity(), numOfCartItems: numOfCartItems);
  }
}

@JsonSerializable()
class DataModel {
  @JsonKey(name: "_id")
  final String? Id;
  @JsonKey(name: "cartOwner")
  final String? cartOwner;
  @JsonKey(name: "products")
  final List<CartItem>? products;
  @JsonKey(name: "createdAt")
  final String? createdAt;
  @JsonKey(name: "updatedAt")
  final String? updatedAt;
  @JsonKey(name: "__v")
  final int? v;
  @JsonKey(name: "totalCartPrice")
  final int? totalCartPrice;

  DataModel ({
    this.Id,
    this.cartOwner,
    this.products,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.totalCartPrice,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return _$DataModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DataModelToJson(this);
  }
  DataEntity toEntity(){
return DataEntity(Id: Id,cartItems: products?.map((e) => e.toEntity(),).toList(),totalCartPrice: totalCartPrice);
  }

}

@JsonSerializable()
class CartItem {
  @JsonKey(name: "count")
  final int? count;
  @JsonKey(name: "_id")
  final String? Id;
  @JsonKey(name: "product")
  final Product? product;
  @JsonKey(name: "price")
  final int? price;

  CartItem ({
    this.count,
    this.Id,
    this.product,
    this.price,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return _$CartItemFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CartItemToJson(this);
  }


  CartItemEntity toEntity(){
    return CartItemEntity(
      Id: Id,
      count: count,
      price: price,
      product: product?.toEntity()
    );
  }
}



@JsonSerializable()
class Subcategory {
  @JsonKey(name: "_id")
  final String? Id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "category")
  final String? category;

  Subcategory ({
    this.Id,
    this.name,
    this.slug,
    this.category,
  });

  factory Subcategory.fromJson(Map<String, dynamic> json) {
    return _$SubcategoryFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SubcategoryToJson(this);
  }
}

@JsonSerializable()
class Category {
  @JsonKey(name: "_id")
  final String? Id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "image")
  final String? image;

  Category ({
    this.Id,
    this.name,
    this.slug,
    this.image,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return _$CategoryFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CategoryToJson(this);
  }
}

@JsonSerializable()
class Brand {
  @JsonKey(name: "_id")
  final String? Id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "image")
  final String? image;

  Brand ({
    this.Id,
    this.name,
    this.slug,
    this.image,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return _$BrandFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BrandToJson(this);
  }
}


