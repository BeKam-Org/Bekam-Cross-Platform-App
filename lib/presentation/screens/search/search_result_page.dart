import 'package:bekam/data/cubit/product_search_cubit.dart';
import 'package:bekam/data/cubit/product_search_state.dart';
import 'package:bekam/data/model/search_result_model.dart';
import 'package:bekam/data/repository/network_exception.dart';
import 'package:bekam/presentation/common_widget/app_bar.dart';
import 'package:bekam/presentation/widgets/search/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shimmer/shimmer.dart';

class SearchResultPage extends StatefulWidget {
  final String searchQuery;
  const SearchResultPage({super.key, required this.searchQuery});

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductSearchCubit>(context).getSearchResults(
      searchKey: widget.searchQuery,
      region: 'EG',
    );
    return Scaffold(
      appBar: GlobalAppBar(title: widget.searchQuery, isHomePage: false),
      body: BlocBuilder<ProductSearchCubit, SearchResultState<SearchResultModel>>(
        builder: (context, SearchResultState<SearchResultModel> state) {
          return state.when(
            idle: () {
              return SizedBox(
                height: MediaQuery.sizeOf(context).height ,
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  enabled: true,
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height ,
                    child: MasonryGridView.count(
                      itemCount: 50,
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemBuilder: (context, index) {
                        return ProductWidget(
                          product: Response(
                              price: 30,
                              currency: 'LE',
                              image:
                                  "https://m.media-amazon.com/images/I/61k1ZRqkcHL._AC_UL400_.jpg",
                              title: 'title'),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
            loading: () {
              return SizedBox(
                height: MediaQuery.sizeOf(context).height ,
                child: Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  enabled: true,
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height ,
                    child: MasonryGridView.count(
                      itemCount: 50,
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemBuilder: (context, index) {
                        return ProductWidget(
                          product: Response(
                              price: 30,
                              currency: 'LE',
                              image:
                                  "https://m.media-amazon.com/images/I/61k1ZRqkcHL._AC_UL400_.jpg",
                              title: 'title'),
                        );
                      },
                    ),
                  ),
                ),
              );
              // return const Center(
              //     child: CircularProgressIndicator());
            },
            success: (userData) {
              SearchResultModel searchResultModel = userData;
              return searchResultModel.response!.isEmpty
                  ? Container()
                  : searchResultModel.response!.length == 1
                      ? ProductWidget(
                          product: searchResultModel.response![0])
                      : SizedBox(
                          height: MediaQuery.sizeOf(context).height ,
                          child: MasonryGridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          itemBuilder: (context, index) {
                            return ProductWidget(
                                product:
                                    searchResultModel.response![index]);
                          },
                        ));
            },
            error: (NetworkExceptions error) {
              return Center(
                  child: Text(NetworkExceptions.getErrorMessage(error)));
            },
          );
        },
      ),
    );
  }
}
