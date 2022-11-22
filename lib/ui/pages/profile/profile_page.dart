import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/colors.dart';
import 'components/custom_app_bar.dart';
import 'components/labeled_icon.dart';
import 'components/labeled_image.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: Center(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                'Eliton Franco',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                LabeledIcon(label: '2.3k', icon: Ionicons.heart),
                SizedBox(width: 30),
                LabeledIcon(label: '1.2k', icon: Ionicons.people),
              ],
            ),
            const SizedBox(height: 20),
            const DefaultTabController(
              length: 3,
              initialIndex: 0,
              child: TabBar(
                indicator: BoxDecoration(),
                labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                labelColor: AppColors.mainBlue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'Projetos'),
                  Tab(text: 'Sobre'),
                  Tab(text: 'Preferências'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const LabeledImage(
              label: 'Montanhas',
              asset: AppImages.nature3,
              margin: EdgeInsets.only(bottom: 15),
            ),
            const LabeledImage(
              label: 'Avenida',
              asset: AppImages.street3,
            )
          ],
        ),
      ),
    );
  }
}
