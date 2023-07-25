import 'package:bekam/data/cubit/on_boarding_cubit.dart';
import 'package:bekam/presentation/screens/landing_page.dart';
import 'package:bekam/presentation/screens/registeration/forget_pass.dart';
import 'package:bekam/presentation/widgets/onboarding/smooth_indicator/effects/expanding_dots_effect.dart';
import 'package:bekam/presentation/widgets/onboarding/smooth_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onboardingCubit = OnBoardingCubit.get(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: onboardingCubit.pages,
            enableSideReveal: true,
            liquidController: onboardingCubit.liquidController,
            onPageChangeCallback: onboardingCubit.onPageChangedCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            waveType: WaveType.circularReveal,
          ),
          Positioned(
            top: 50,

            right: 20,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LandingPage()),
                );
              },
              child: const Text("Skip", style: TextStyle(color: Colors.grey)),
            ),
          ),
          BlocBuilder<OnBoardingCubit, OnBoardingState>(
            builder: (context, state) {
              return Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                  count: onboardingCubit.pages.length,
                  activeIndex: onboardingCubit.currentPage,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xff272727),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
