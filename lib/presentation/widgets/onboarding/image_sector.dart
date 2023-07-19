// Flutter imports:
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/widgets/onboarding/image_clipper.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:lottie/lottie.dart';
class ImagesSector extends StatelessWidget {
  final String image;
  const ImagesSector({Key? key,required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
   
 
    return Stack(
      children: [
        MediaQuery.of(context).size.height > GlobalAppSizes.s_200
            ? ClipPath(
                clipper: OnBoardingImageClipper(),
                child: Container(
                  width: size.width,
                  height: size.height * GlobalAppSizes.s_062,
                  color: Theme.of(context)
                      .colorScheme
                      .secondary
                      .withOpacity(GlobalAppSizes.s_02),
                ),
              )
            : Container(),
        MediaQuery.of(context).size.height > GlobalAppSizes.s_200
            ? ClipPath(
                clipper: OnBoardingImageClipper(),
                child: Container(
                  width: size.width,
                  height: size.height * GlobalAppSizes.s_06,
                  color: Theme.of(context)
                      .colorScheme
                      .secondary
                      .withOpacity(GlobalAppSizes.s_05),
                ),
              )
            : Container(),
        MediaQuery.of(context).size.height > GlobalAppSizes.s_200
            ? ClipPath(
                clipper: OnBoardingImageClipper(),
                child: Container(
                  width: size.width,
                  height: size.height * GlobalAppSizes.s_058,
                  color: GlobalAppColors.appBlue,
                  child: SizedBox(
                    width: size.width,
                    height: size.height * GlobalAppSizes.s_058,
                    key: UniqueKey(),
                    child: Center(
                      child: Lottie.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
