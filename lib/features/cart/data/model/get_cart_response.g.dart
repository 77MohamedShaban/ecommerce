// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartResponse _$GetCartResponseFromJson(Map<String, dynamic> json) =>
    GetCartResponse(
      status: json['status'] as String?,
      numOfCartItems: (json['numOfCartItems'] as num?)?.toInt(),
      cartId: json['cartId'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      statusMsg: json['statusMsg'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$GetCartResponseToJson(GetCartResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'statusMsg': instance.statusMsg,
      'message': instance.message,
      'numOfCartItems': instance.numOfCartItems,
      'cartId': instance.cartId,
      'data': instance.data,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      Id: json['_id'] as String?,
      cartOwner: json['cartOwner'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      v: (json['__v'] as num?)?.toInt(),
      totalCartPrice: (json['totalCartPrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      '_id': instance.Id,
      'cartOwner': instance.cartOwner,
      'products': instance.products,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.v,
      'totalCartPrice': instance.totalCartPrice,
    };

CartItem _$CartItemFromJson(Map<String, dynamic> json) => CartItem(
      count: (json['count'] as num?)?.toInt(),
      Id: json['_id'] as String?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CartItemToJson(CartItem instance) => <String, dynamic>{
      'count': instance.count,
      '_id': instance.Id,
      'product': instance.product,
      'price': instance.price,
    };

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) => Subcategory(
      Id: json['_id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$SubcategoryToJson(Subcategory instance) =>
    <String, dynamic>{
      '_id': instance.Id,
      'name': instance.name,
      'slug': instance.slug,
      'category': instance.category,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      Id: json['_id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      '_id': instance.Id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
    };

Brand _$BrandFromJson(Map<String, dynamic> json) => Brand(
      Id: json['_id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
      '_id': instance.Id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
    };
