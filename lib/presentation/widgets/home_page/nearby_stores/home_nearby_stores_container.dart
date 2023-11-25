// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/model/store_model/store_model.dart';
import 'package:bekam/presentation/widgets/home_page/base_home_page_container.dart';
import 'package:bekam/presentation/widgets/home_page/nearby_stores/store_item.dart';

class HomeNearbyStoresContainer extends StatelessWidget {
  const HomeNearbyStoresContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePageBaseContainer(
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
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 300.myHeight,
                crossAxisCount: 2,
                mainAxisSpacing: 16.myWidth,
                crossAxisSpacing: 16.myWidth,
              ),
              physics: const BouncingScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) {
                StoreModel model = StoreModel(
                  nameMarket: 'Makers Creed',
                  infoOne: 'fast food',
                  status: 'open',
                );
                return StoreItem(
                  model,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
