import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widget/widgets/container_header.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerHeader(leadingText: 'My card'),
        SizedBox(
          height: 20,
        ),
        AspectRatio(
          aspectRatio: 420 / 215,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage(Assets.imagesBackgroundCard),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  contentPadding:
                      const EdgeInsets.only(left: 20, right: 41, top: 20),
                  title: Text(
                    'Name card',
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Syah Bandi',
                    style: AppStyles.styleMedium20(context),
                  ),
                  trailing: SvgPicture.asset(Assets.imagesGallery),
                ),
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '0918 8124 0042 8129',
                        style: AppStyles.styleSemiBold24(context)
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        '12/20 - 124',
                        style: AppStyles.styleRegular16(context)
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const Flexible(
                  child: SizedBox(
                    height: 28.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
