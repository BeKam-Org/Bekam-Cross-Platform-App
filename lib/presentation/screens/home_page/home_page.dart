import 'package:auto_route/annotations.dart';
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_drop_doen.dart';
import 'package:bekam/presentation/common_widget/custom_elevated_button.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';
import 'package:bekam/presentation/common_widget/custom_search_view.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: GlobalAppDecoration.fillGray,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 2.myHeight),
                //! top search
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 35.myWidth,
                    vertical: 8.myHeight,
                  ),
                  decoration:
                      GlobalAppDecoration.fillOnPrimaryContainer.copyWith(
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
                                borderRadius:
                                    GlobalAppBorderRadius.customBorderBL30,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_delivery_to".tr(context),
                                          style: CustomTextStyles
                                              .labelLargePrimary,
                                        ),
                                        SizedBox(height: 7.myHeight),
                                        CustomDropDown(
                                          width: 126.myWidth,
                                          icon: Container(
                                            margin: EdgeInsets.only(
                                                left: 6.myWidth),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                bottom:
                                                    Radius.circular(30.myWidth),
                                              ),
                                            ),
                                            child: CustomImageView(
                                              imagePath:
                                                  GlobalAppSVG.imgIconPrimary,
                                              height: 12.adaptSize,
                                              width: 12.adaptSize,
                                            ),
                                          ),
                                          hintText: "msg_1014_prospect_vall"
                                              .tr(context),
                                          items: [
                                            SelectionPopupModel(
                                                title: 'item 1 '),
                                            SelectionPopupModel(
                                                title: 'item 2 '),
                                            SelectionPopupModel(
                                                title: 'item 3 '),
                                            SelectionPopupModel(
                                                title: 'item 4 ')
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
                              buttonTextStyle:
                                  CustomTextStyles.labelLargeBluegray900,
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
                ),

                //! popular product
                Container(
                  margin: EdgeInsets.only(
                    left: 16.myWidth,
                    top: 10.myHeight,
                    right: 16.myWidth,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20.myHeight),
                  decoration:
                      GlobalAppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: GlobalAppBorderRadius.roundedBorder15,
                  ),
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
                                "lbl_banners".tr(context),
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
                                Banner(),
                                Banner(),
                                Banner(),
                                Banner(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5.myHeight),
                    ],
                  ),
                ),

                //! Categories
                Container(
                  margin: EdgeInsets.only(
                    left: 16.myWidth,
                    top: 10.myHeight,
                    right: 16.myWidth,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 22.myHeight),
                  decoration:
                      GlobalAppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: GlobalAppBorderRadius.roundedBorder15,
                  ),
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
                ),

                //! Set Menu
                Container(
                  margin: EdgeInsets.only(
                    left: 16.myWidth,
                    top: 10.myHeight,
                    right: 16.myWidth,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 22.myHeight),
                  decoration:
                      GlobalAppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: GlobalAppBorderRadius.roundedBorder15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 19.myWidth),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "lbl_set_mnu".tr(context),
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
                ),

                //! popular product
                Container(
                  margin: EdgeInsets.only(
                    left: 16.myWidth,
                    top: 10.myHeight,
                    right: 16.myWidth,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20.myHeight),
                  decoration:
                      GlobalAppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: GlobalAppBorderRadius.roundedBorder15,
                  ),
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
                                "lbl_popular_items".tr(context),
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
                                BestSellerWidget(),
                                BestSellerWidget(),
                                BestSellerWidget(),
                                BestSellerWidget(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5.myHeight),
                    ],
                  ),
                ),

                //! nearby
                Container(
                  margin: EdgeInsets.only(
                    left: 16.myWidth,
                    top: 10.myHeight,
                    right: 16.myWidth,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20.myHeight),
                  decoration:
                      GlobalAppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: GlobalAppBorderRadius.roundedBorder15,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.myWidth),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.myHeight),
                              child: Text(
                                "lbl_nearby_store".tr(context),
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
                      SizedBox(height: 10.myHeight),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: 300.myHeight,
                            crossAxisCount: 2,
                            mainAxisSpacing: 16.myWidth,
                            crossAxisSpacing: 16.myWidth,
                          ),
                          physics: const BouncingScrollPhysics(),
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            VectorItemModel model = VectorItemModel(
                              nameMarket: 'Makers Creed',
                              infoOne: 'fast food',
                              status: 'open',
                            );
                            return VectorItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                //! latest product
                Container(
                  margin: EdgeInsets.only(
                    left: 16.myWidth,
                    top: 10.myHeight,
                    right: 16.myWidth,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20.myHeight),
                  decoration:
                      GlobalAppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: GlobalAppBorderRadius.roundedBorder15,
                  ),
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
                                BestSellerWidget(),
                                BestSellerWidget(),
                                BestSellerWidget(),
                                BestSellerWidget(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5.myHeight),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.myWidth, right: 10.myWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: GlobalAppImages.imgImportImage116x205,
            height: 116.myHeight,
            width: 205.myWidth,
            radius: BorderRadius.circular(
              15.myWidth,
            ),
          ),
          SizedBox(height: 17.myHeight),
          Row(
            children: [
              Text(
                "lbl_subway".tr(context),
                style: Get.textTheme.titleLarge,
              ),
              CustomImageView(
                imagePath: GlobalAppSVG.imgLocationTeal700,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 2.myWidth),
              ),
            ],
          ),
          SizedBox(height: 6.myHeight),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_open".tr(context),
                style: CustomTextStyles.labelLargeTeal700,
              ),
              Container(
                height: 2.adaptSize,
                width: 2.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.myWidth,
                  top: 6.myHeight,
                  bottom: 7.myHeight,
                ),
                decoration: BoxDecoration(
                  color: GlobalAppColors.gray40001,
                  borderRadius: BorderRadius.circular(
                    1.myWidth,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.myWidth),
                child: Text(
                  "msg_santa_nella_ca".tr(context),
                  style: Get.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 13.myHeight),
          Row(
            children: [
              _buildFortyFive(context),
              Container(
                height: 2.adaptSize,
                width: 2.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.myWidth,
                  top: 11.myHeight,
                  bottom: 11.myHeight,
                ),
                decoration: BoxDecoration(
                  color: GlobalAppColors.gray40001,
                  borderRadius: BorderRadius.circular(
                    1.myWidth,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.myWidth,
                  top: 3.myHeight,
                  bottom: 4.myHeight,
                ),
                child: Text(
                  "lbl_1_5km".tr(context),
                  style: CustomTextStyles.labelLargeBluegray900,
                ),
              ),
              Container(
                height: 2.adaptSize,
                width: 2.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.myWidth,
                  top: 11.myHeight,
                  bottom: 11.myHeight,
                ),
                decoration: BoxDecoration(
                  color: GlobalAppColors.gray40001,
                  borderRadius: BorderRadius.circular(
                    1.myWidth,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.myWidth,
                  top: 5.myHeight,
                  bottom: 2.myHeight,
                ),
                child: Text(
                  "lbl_free_shipping".tr(context),
                  style: CustomTextStyles.labelLargeBluegray900,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.myWidth, right: 10.myWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: GlobalAppImages.imgImportImage116x205,
            height: 116.myHeight,
            width: 205.myWidth,
            radius: BorderRadius.circular(
              15.myWidth,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.myWidth, right: 5.myWidth),
      decoration: BoxDecoration(
        borderRadius: GlobalAppBorderRadius.roundedBorder15,
      ),
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: GlobalAppBorderRadius.roundedBorder15,
            ),
            child: Container(
              height: 100.myHeight,
              width: 83.myWidth,
              decoration: BoxDecoration(
                borderRadius: GlobalAppBorderRadius.roundedBorder15,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: ShapeDecoration(
                      color: GlobalAppColors.primaryColor.withOpacity(0.8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: GlobalAppSVG.imgFlag,
                    height: 47.myHeight,
                    width: 52.myWidth,
                    radius: BorderRadius.circular(
                      15.myWidth,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 11.myHeight),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 12.myWidth),
              child: Text(
                "lbl_burgers".tr(context),
                style: CustomTextStyles.labelLargeBluegray900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Section Widget
Widget _buildFortyFive(BuildContext context) {
  return CustomElevatedButton(
    height: 24.myHeight,
    width: 49.myWidth,
    text: "lbl_4_5".tr(context),
    leftIcon: Container(
      margin: EdgeInsets.only(right: 4.myWidth),
      child: CustomImageView(
        imagePath: GlobalAppSVG.imgCloseOnprimarycontainer,
        height: 16.adaptSize,
        width: 16.adaptSize,
      ),
    ),
    buttonStyle: CustomButtonStyles.fillPrimaryTL12,
    buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer,
  );
}

class VectorItemModel {
  VectorItemModel({
    this.vector,
    this.nameMarket,
    this.status,
    this.infoOne,
    this.id,
  }) {
    vector = vector ?? GlobalAppSVG.imgVector;
    nameMarket = nameMarket ?? "Starbucks";
    status = status ?? "Open";
    infoOne = infoOne ?? "Coffee";
    id = id ?? "";
  }

  String? vector;

  String? nameMarket;

  String? status;

  String? infoOne;

  String? id;
}

// ignore: must_be_immutable
class VectorItemWidget extends StatelessWidget {
  VectorItemWidget(
    this.vectorItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VectorItemModel vectorItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.myWidth),
      decoration: GlobalAppDecoration.fillPrimary.copyWith(
          borderRadius: GlobalAppBorderRadius.roundedBorder15,
          color: GlobalAppColors.blueGray900.withOpacity(0.1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 190.myHeight,
            width: 140.myWidth,
            padding: EdgeInsets.symmetric(
              horizontal: 25.myWidth,
              vertical: 50.myHeight,
            ),
            decoration: GlobalAppDecoration.gradientTealToGreenAf.copyWith(
              borderRadius: GlobalAppBorderRadius.circleBorder12,
            ),
            child: CustomImageView(
              imagePath: vectorItemModelObj.vector,
              height: 90.adaptSize,
              width: 90.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 12.myHeight),
          Row(
            children: [
              Text(
                vectorItemModelObj.nameMarket!,
                style: Get.textTheme.bodyLarge,
              ),
              CustomImageView(
                imagePath: GlobalAppSVG.imgLocationTeal700,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 2.myWidth),
              ),
            ],
          ),
          SizedBox(height: 5.myHeight),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.myHeight),
                child: Text(
                  vectorItemModelObj.status!,
                  style: CustomTextStyles.labelLargeTeal700,
                ),
              ),
              Container(
                height: 2.adaptSize,
                width: 2.adaptSize,
                margin: EdgeInsets.only(
                  left: 8.myWidth,
                  top: 7.myHeight,
                  bottom: 8.myHeight,
                ),
                decoration: BoxDecoration(
                  color: GlobalAppColors.gray40001,
                  borderRadius: BorderRadius.circular(
                    1.myWidth,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.myWidth),
                child: Text(
                  vectorItemModelObj.infoOne!,
                  style: Get.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
