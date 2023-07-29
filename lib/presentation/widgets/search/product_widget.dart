import 'dart:convert';

import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/cubit/theme_cubit.dart';
import 'package:bekam/data/model/search_result_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductWidget extends StatelessWidget {
  final Response product;
  const ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    late var img64;
    late var decodestring;
    late Uint8List encodeedimg;
    if (product.image!.split(':')[0] == 'data') {
      img64 = product.image;
      decodestring = base64Decode('$img64'.split(',').last);
      encodeedimg = decodestring;
      print(encodeedimg);
    }
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).highlightColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5)
          ],
        ),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          //! Product Image
          Container(
            height: 150,
            padding: GlobalAppEdgeInsets.all_20,
            decoration: BoxDecoration(
              color: GlobalAppColors.getIconBg(context),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: product.image!.split(':')[0] == 'data'
                ? Image.memory(decodestring)
                : FadeInImage.assetNetwork(
                    placeholder: GlobalAppImages.placeholder,
                    fit: BoxFit.fill,
                    image: product.image!,
                    imageErrorBuilder: (c, o, s) => Image.asset(
                        GlobalAppImages.placeholder,
                        fit: BoxFit.cover),
                  ),
          ),

          // Product Details
          Padding(
            padding: GlobalAppEdgeInsets.all_10,
            child: SizedBox(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(product.title ?? '',
                      style: GlobalAppStyles.robotoRegular,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis),
                  GlobalAppSizedBox.h_4,
                  Row(children: [
                    Text(
                      product.price.toString(),
                      style: GlobalAppStyles.robotoBold
                          .copyWith(color: GlobalAppColors.getPrimary(context)),
                    ),
                    const Expanded(child: SizedBox.shrink()),
                    Text(product.currency.toString(),
                        style: GlobalAppStyles.robotoRegular.copyWith(
                          color: ThemeCubit.get(context).darkTheme
                              ? Colors.white
                              : Colors.orange,
                          fontSize: GlobalAppSizes.s_12,
                        )),
                    Icon(Icons.star,
                        color: ThemeCubit.get(context).darkTheme
                            ? Colors.white
                            : Colors.orange,
                        size: 15),
                  ]),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
