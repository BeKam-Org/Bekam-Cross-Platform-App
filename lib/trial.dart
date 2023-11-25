// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:auto_route/annotations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// 🌎 Project imports:
import 'package:bekam/data/business_logic/set_menu/set_menu_get_cubit.dart';
import 'package:bekam/data/business_logic/set_menu/set_menu_get_state.dart';
import 'package:bekam/data/model/network_exception/network_exception.dart';
import 'package:bekam/data/model/product_model/product_model.dart';

@RoutePage()
class TrialScreen extends StatefulWidget {
  const TrialScreen({Key? key}) : super(key: key);

  @override
  State<TrialScreen> createState() => _TrialScreenState();
}

class _TrialScreenState extends State<TrialScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SetMenuGetCubit>(context).getSetMenuList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        children: [
          BlocBuilder<SetMenuGetCubit, SetMenuGetState<List<Product>>>(
            builder: (context, SetMenuGetState<List<Product>> state) {
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
                  return Center(
                      child: Text(NetworkExceptions.getErrorMessage(error)));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
