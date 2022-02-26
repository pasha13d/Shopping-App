import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/utils/colors.dart';
import 'package:shopping_app/utils/dimensions.dart';
import 'package:shopping_app/widgets/app_icon.dart';
import 'package:shopping_app/widgets/big_text.dart';
import 'package:shopping_app/widgets/expandable_text.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(text: "Chinese Side", size: Dimensions.font26)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: "Michael Jackson last song was Earth Song. He performed it on June 24 2009, less than 24 hours before he died. One More Chance which was released in 2003, it was the last new single released while he was alive.Michael Jackson last song was Earth Song. He performed it on June 24 2009, less than 24 hours before he died. One More Chance which was released in 2003, it was the last new single released while he was alive.Michael Jackson last song was Earth Song. He performed it on June 24 2009, less than 24 hours before he died. One More Chance which was released in 2003, it was the last new single released while he was alive.Michael Jackson last song was Earth Song. He performed it on June 24 2009, less than 24 hours before he died. One More Chance which was released in 2003, it was the last new single released while he was alive.Michael Jackson last song was Earth Song. He performed it on June 24 2009, less than 24 hours before he died. One More Chance which was released in 2003, it was the last new single released while he was alive.Michael Jackson last song was Earth Song. He performed it on June 24 2009, less than 24 hours before he died. One More Chance which was released in 2003, it was the last new single released while he was alive.Michael Jackson last song was Earth Song. He performed it on June 24 2009, less than 24 hours before he died. One More Chance which was released in 2003, it was the last new single released while he was alive.Michael Jackson last song was Earth Song. He performed it on June 24 2009, less than 24 hours before he died. One More Chance which was released in 2003, it was the last new single released while he was alive.Michael Jackson last song was Earth Song. He performed it on June 24 2009, less than 24 hours before he died. One More Chance which was released in 2003, it was the last new single released while he was alive.Michael Jackson last song was Earth Song. He performed it on June 24 2009, less than 24 hours before he died. One More Chance which was released in 2003, it was the last new single released while he was alive.Michael Jackson last song was Earth Song. He performed it on June 24 2009, less than 24 hours before he died. One More Chance which was released in 2003, it was the last new single released while he was alive."),
                  margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// add/remove
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              bottom: Dimensions.height10,
              top: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                ),
                BigText(text: "\$12.88 "+" X "+" 0 ", color: AppColors.mainBlackColor, size: Dimensions.font26),
                AppIcon(
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  iconSize: Dimensions.iconSize24,
                ),
              ],
            ),
          ),
          /// bottom bar
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// increase/ decrease button
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                /// right
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                  child: BigText(text: "\$10 | Add to cart", color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
