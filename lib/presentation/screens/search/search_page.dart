import 'package:bekam/data/cubit/product_search_cubit.dart';
import 'package:bekam/data/injection.dart';
import 'package:bekam/data/repository/serach_repo.dart';
import 'package:bekam/data/webServices/search_webservices.dart';
import 'package:bekam/presentation/screens/search/search_result_page.dart';
import 'package:bekam/presentation/widgets/search/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CustomBackground(),
               
                Center(
                  child: SizedBox(
                    width: size.width * 0.9,
                    child: TextFormField(
                      controller: controller,
                      cursorColor: Theme.of(context).primaryColor,
                      enableSuggestions: true,
                      textAlign: TextAlign.start,
                      onEditingComplete: () {
                        // getItSetup();
          
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BlocProvider<ProductSearchCubit>(
                                    create: (context) => ProductSearchCubit(
                                      SearchRepository(
                                        SearchWbService(
                                          createAndSetupDio(),
                                        ),
                                      ),
                                    ),
                                    child: SearchResultPage(
                                      searchQuery: controller.text,
                                    ),
                                  )),
                        );
                      },
                      decoration: InputDecoration(
                          filled: true,
                          alignLabelWithHint: true,
                          fillColor: const Color(0xffDCEBEA),
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Theme.of(context).primaryColor),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: SvgPicture.asset(
                              "assets/svg/search.svg",
                            ),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              "assets/images/search.png",
                            ),
                          ),
                          hintText: "Search for product",
                          prefixIconConstraints:
                              const BoxConstraints(maxHeight: 17, maxWidth: 50),
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          prefixStyle:
                              TextStyle(color: Theme.of(context).primaryColor),
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ),
                Center(
                  child: Lottie.asset('assets/lottie/search.json'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
