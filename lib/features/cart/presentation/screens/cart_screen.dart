import 'package:ecommerce_app/core/resources/assets_manager.dart';
import 'package:ecommerce_app/core/resources/color_manager.dart';
import 'package:ecommerce_app/core/resources/styles_manager.dart';
import 'package:ecommerce_app/core/resources/values_manager.dart';
import 'package:ecommerce_app/features/cart/presentation/view_model/cart_view_model_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/DI/di.dart';
import '../widgets/cart_item_widget.dart';
import '../widgets/total_price_and_checkout_botton.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<CartViewModelCubit>()..fetchCart(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Cart',
            style: getMediumStyle(fontSize: 20, color: ColorManager.textColor),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage(
                  IconsAssets.icSearch,
                ),
                color: ColorManager.primary,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage(IconsAssets.icCart),
                color: ColorManager.primary,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppPadding.p14),
          child: BlocBuilder<CartViewModelCubit, CartViewModelState>(
            builder: (context, state) {
              if(state is CartFetchSuccess){
                return Column(
                  children: [
                    Expanded(
                      // the list of cart items ===============
                      child: ListView.separated(
                        itemBuilder: (context, index) =>
                            CartItemWidget(
                              imagePath: state.cartItems[index].product?.imageCover??"",
                              title: state.cartItems[index].product?.title??"",
                              price: state.cartItems[index].price??0,
                              quantity: state.cartItems[index].count??0,
                              onDeleteTap: () {},
                              onDecrementTap: (value) {},
                              onIncrementTap: (value) {},
                            ),
                        separatorBuilder: (context, index) =>
                            SizedBox(height: AppSize.s12.h),
                        itemCount: state.cartItems.length,
                      ),
                    ),
                    // the total price and checkout button========
                    TotalPriceAndCheckoutBotton(
                      totalPrice: state.totalPrice,
                      checkoutButtonOnTap: () {},
                    ),
                    SizedBox(height: 10.h),
                  ],
                );
              }
              if(state is CartFetchError){
                return Center(child: Text(state.error),);
              }
              return Center(child: CircularProgressIndicator(),);
            },
          ),
        ),
      ),
    );
  }
}
