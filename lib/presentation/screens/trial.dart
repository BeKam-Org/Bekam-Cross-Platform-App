
import 'package:bekam/data/cubit/latest_product_cubit.dart';
import 'package:bekam/data/cubit/latest_product_state.dart';
import 'package:bekam/data/cubit/set_menu_cubit.dart';
import 'package:bekam/data/cubit/set_menu_state.dart';

import 'package:bekam/data/model/category_model.dart';
import 'package:bekam/data/model/product_model.dart';
import 'package:bekam/data/repository/network_exception.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categoryList = [];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SetMenuCubit>(context).getSetMenuList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        children: [
          BlocBuilder<SetMenuCubit, SetMenuState<List<Product>>>(
            builder: (context, SetMenuState<List<Product>> state) {
              return state.when(
                idle: () {
                  return const Center(child: CircularProgressIndicator());
                },
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                },
                success: (bannerModel) {
                 List<Product> response = bannerModel;
                  return SizedBox(
                    height: MediaQuery.sizeOf(context).height,
                    child: MasonryGridView.count(
                      itemCount: response.length,
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemBuilder: (context, index) {
                        return Text(response[index].name!);
                      },
                    ),
                  );
                  // return Container(
                  //   height: 50,
                  //   color: Colors.red,
                  //   child: Center(
                  //       child: Text(
                  //     categoryModel.toString(),
                  //     style: const TextStyle(color: Colors.white),
                  //   )),
                  // );
                },
                error: (NetworkExceptions error) {
                  return const Center(
                      child: Text('a7aaaaaaaaaaaaaaaaaaaaaaaaaaaaa'));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
