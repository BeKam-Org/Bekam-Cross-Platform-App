// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_drop_doen.dart';
import 'package:bekam/presentation/common_widget/custom_elevated_button.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';
import 'package:bekam/presentation/common_widget/custom_search_view.dart';

class HomePageSearchTopBar extends StatelessWidget {
  const HomePageSearchTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 35.myWidth,
        vertical: 8.myHeight,
      ),
      decoration: GlobalAppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: GlobalAppBorderRadius.customBorderBL30,
      ),
      child: Column(
        children: [
          CustomSearchView(
            controller: TextEditingController(),
            hintText: "lbl_search_on_coody".tr(context),
          ),
          SizedBox(height: 27.myHeight),
          Container(
            decoration: BoxDecoration(
              borderRadius: GlobalAppBorderRadius.customBorderBL30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: GlobalAppBorderRadius.customBorderBL30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: GlobalAppSVG.imgIconL,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        radius: BorderRadius.vertical(
                          bottom: Radius.circular(30.myWidth),
                        ),
                        margin: EdgeInsets.only(
                          top: 8.myHeight,
                          bottom: 10.myHeight,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.myWidth),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_delivery_to".tr(context),
                              style: CustomTextStyles.labelLargePrimary,
                            ),
                            SizedBox(height: 7.myHeight),
                            CustomDropDown(
                              width: 126.myWidth,
                              icon: Container(
                                margin: EdgeInsets.only(left: 6.myWidth),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(30.myWidth),
                                  ),
                                ),
                                child: CustomImageView(
                                  imagePath: GlobalAppSVG.imgIconPrimary,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                ),
                              ),
                              hintText: "msg_1014_prospect_vall".tr(context),
                              items: [
                                SelectionPopupModel(title: 'item 1 '),
                                SelectionPopupModel(title: 'item 2 '),
                                SelectionPopupModel(title: 'item 3 '),
                                SelectionPopupModel(title: 'item 4 ')
                              ],
                              onChanged: (value) {},
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CustomElevatedButton(
                  height: 40.myHeight,
                  width: 80.myWidth,
                  text: "lbl_filter".tr(context),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 4.myWidth),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30.myWidth),
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: GlobalAppSVG.imgSettings,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  buttonTextStyle: CustomTextStyles.labelLargeBluegray900,
                ),
              ],
            ),
          ),
          SizedBox(height: 25.myHeight),
          Opacity(
            opacity: 0.049999997,
            child: Container(
              height: 5.myHeight,
              width: 40.myWidth,
              decoration: BoxDecoration(
                color: GlobalAppColors.black900.withOpacity(0.37),
                borderRadius: BorderRadius.circular(
                  2.myWidth,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.myHeight),
        ],
      ),
    );
  }
}
