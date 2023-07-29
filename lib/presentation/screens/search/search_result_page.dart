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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<ProductSearchCubit, SearchResultState<SearchResultModel>>(
            builder: (context, SearchResultState<SearchResultModel> state) {
              return state.when(
                idle: () {
                  return Expanded(
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      enabled: true,
                      child: Expanded(
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
                  // r
                  // return const Center(
                  //     child: CircularProgressIndicator());
                },
                loading: () {
                  return Expanded(
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey.shade300,
                      highlightColor: Colors.grey.shade100,
                      enabled: true,
                      child: Expanded(
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
                          ? Container()
                          : Expanded(
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
          //       BlocBuilder<ProductSearchCubit, SearchResultState<dynamic>>(
          //         builder: (context,
          //             SearchResultState<SearchResultModel> state) {
          //                      return state.when(
          //   idle: () {
          //     return const Center(child: CircularProgressIndicator());
          //   },
          //   loading: () {
          //     return const Center(child: CircularProgressIndicator());
          //   },
          //   success: (User userData) {
          //     return Container(
          //       height: 50,
          //       color: Colors.red,
          //       child: Center(
          //           child: Text(
          //         userData.email.toString(),
          //         style: const TextStyle(color: Colors.white),
          //       )),
          //     );
          //   },
          //   error: (NetworkExceptions error) {
          //     return Center(
          //         child: Text(NetworkExceptions.getErrorMessage(error)));
          //   },
          // );
          // if (state is GetSearchResult) {
          //   return state.searchResult.response!.isEmpty
          //       ? const Text('[]')
          //       : SizedBox(
          //           height: 500,
          //           child: ListView.builder(
          //             itemCount:
          //                 state.searchResult.response!.length,
          //             itemBuilder: (context, index) {
          //               return Text(state
          //                   .searchResult.response![index].title
          //                   .toString());
          //             },
          //           ),
          //         );
          // } else {
          //   return const Text("loading ... ");
          // }
          //         },
          //       ),

          // ColoredBox(
          //   color: Colors.amber,
          //   child: GestureDetector(
          //     onTap: () {
          //       LogoutCubit.get(context).confirmSignOut(context);
          //     },
          //     child: const Center(child: Text(' Sign out')),
          //   ),
          // ),
        ],
      ),
    );
  }
}
