import 'package:flutter/material.dart';
import '../../../core/constants/assets.dart';
import 'components/app_bottom_navbar.dart';
import 'components/avatar_list.dart';
import 'components/home_header.dart';
import 'components/home_image_component.dart';
import 'components/home_image_list.dart';
import 'components/home_section_title.dart';

import '../../../core/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        color: Colors.white,
        child: Scaffold(
          bottomNavigationBar: const AppBottomNavBar(),
          body: ListView(
            children: const [
              HomeHeader(),
              AvatarList(),
              SizedBox(height: 40),
              HomeSectionTitle(
                asset: AppImages.nature1,
                title: Labels.homeNatureTitle,
                subtitle: Labels.homeNatureSubtitle,
              ),
              HomeImageList(
                items: [
                  HomeImageComponent(asset: AppImages.nature2),
                  HomeImageComponent(asset: AppImages.nature3),
                ],
              ),
              HomeSectionTitle(
                asset: AppImages.street1,
                title: Labels.homeStreetTitle,
                subtitle: Labels.homeStreetSubtitle,
              ),
              HomeImageList(
                items: [
                  HomeImageComponent(asset: AppImages.street2),
                  HomeImageComponent(asset: AppImages.street3),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
