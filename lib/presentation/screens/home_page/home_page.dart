import 'package:auto_route/annotations.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/widgets/home_page/popular&latest%20products/home_latest_product_container.dart';
import 'package:bekam/presentation/widgets/home_page/popular&latest%20products/home_popular_items_container.dart';
import 'package:bekam/presentation/widgets/home_page/search/home_page_search_top_bar.dart';
import 'package:bekam/presentation/widgets/home_page/set_menu/home_set_menu_container.dart';
import 'package:bekam/presentation/widgets/home_page/banner/home_banner_container.dart';
import 'package:bekam/presentation/widgets/home_page/category/home_category_container.dart';
import 'package:bekam/presentation/widgets/home_page/nearby_stores/home_nearby_stores_container.dart';
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
                const HomePageSearchTopBar(),

                //! Banners
                const HomeBannerContainer(),

                //! Categories
                const HomeCategoryContainer(),

                //! Set Menu
                const HomeSetMenuContainer(),

                //! popular product
                const HomePopularItemsContainer(),

                //! nearby
                 const HomeNearbyStoresContainer(),

                //! latest product
                const HomelatestProductContainer()
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}


