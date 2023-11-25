import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/widgets/home_page/base_home_page_container.dart';
import 'package:bekam/presentation/widgets/home_page/category/category_item.dart';
import 'package:flutter/material.dart';

class HomeCategoryContainer extends StatelessWidget {
  const HomeCategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePageBaseContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.myWidth),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_category".tr(context),
                  style: CustomTextStyles.titleMediumBold,
                ),
                Text(
                  "lbl_see_all".tr(context),
                  style: Get.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.myHeight),
          const Divider(
            color: GlobalAppColors.primaryColor,
          ),
          SizedBox(height: 20.myHeight),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(left: 20.myWidth),
              decoration: BoxDecoration(
                borderRadius: GlobalAppBorderRadius.roundedBorder15,
              ),
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CategoryItem(),
                    CategoryItem(),
                    CategoryItem(),
                    CategoryItem(),
                    CategoryItem(),
                    CategoryItem(),
                    CategoryItem(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
