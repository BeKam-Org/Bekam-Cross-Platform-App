import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/model/onboarding_model.dart';
import 'package:bekam/presentation/widgets/onboarding/on_boarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  static OnBoardingCubit get(BuildContext context) => BlocProvider.of(context);
  OnBoardingCubit() : super(OnBoardingInitial());

  /*----------------------------------------------*/
  /*-------------- Pages Data --------------------*/
  /*----------------------------------------------*/
  final pages = [
    OnBoardingPageWidget(
      model: OnboardingModel(
        imagePath: 'assets/lotties/browse_websites.json',
        title: 'Best product match',
        subTitle:
            'Get the best option for the product you want from the most popular stores',
        counterText: '1/4',
        backGroundColor: const Color(0xfffddcdf),
      ),
    ),
    OnBoardingPageWidget(
      model: OnboardingModel(
        imagePath: 'assets/lotties/choose_product.json',
        title: 'Choose Product',
        subTitle: 'Select the best match product and add it to your card',
        counterText: '2/4',
        backGroundColor: GlobalAppColors.kScaffoldLight,
      ),
    ),
    OnBoardingPageWidget(
      model: OnboardingModel(
        imagePath: 'assets/lotties/payment.json',
        title: 'Multiple payment methods',
        subTitle: 'Ther are many options to pay for your product',
        counterText: '3/4',
        backGroundColor: const Color(0xfffddcdf),
      ),
    ),
    OnBoardingPageWidget(
      model: OnboardingModel(
        imagePath: 'assets/lotties/deliver.json',
        title: 'Deliver to door',
        subTitle: 'your order will be collected and delivered to your home',
        counterText: '4/4',
        backGroundColor: const Color(0xffffdcbd),
      ),
    ),
  ];

  final LiquidController liquidController = LiquidController();
  int currentPage = 0;

  void animateToNextPage() {
    int nextPage = liquidController.currentPage + 1;
    liquidController.animateToPage(page: nextPage);
    currentPage = nextPage;
  }

  onPageChangedCallback(int activePageIndex) {
    currentPage = activePageIndex;
    emit(OnBoardingMoveToNextPage());
  }
}
