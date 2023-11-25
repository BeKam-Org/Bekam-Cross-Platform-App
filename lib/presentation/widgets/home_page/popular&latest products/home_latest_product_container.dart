// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/widgets/home_page/base_home_page_container.dart';
import 'package:bekam/presentation/widgets/home_page/popular&latest%20products/product_item.dart';

class HomelatestProductContainer extends StatelessWidget {
  const HomelatestProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePageBaseContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.myWidth),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.myHeight),
                  child: Text(
                    "lbl_latest_products".tr(context),
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.myHeight),
                  child: Text(
                    "lbl_see_all".tr(context),
                    style: Get.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.myHeight),
          const Divider(
            color: GlobalAppColors.primaryColor,
          ),
          SizedBox(height: 20.myHeight),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 19.myWidth),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ProductItem(),
                    ProductItem(),
                    ProductItem(),
                    ProductItem(),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 5.myHeight),
        ],
      ),
    );
  }
}
