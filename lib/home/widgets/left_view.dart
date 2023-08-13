import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/home/home_desktop_view.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:scrollview_observer/scrollview_observer.dart';
import 'package:url_launcher/url_launcher.dart';

class LeftView extends StatelessWidget {
  const LeftView({
    super.key,
    required this.observerController,
  });

  final ListObserverController observerController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ranjan Padmakiran",
              style:
                  context.headL.w700.copyWith(fontSize: 48).col(Colors.white),
            ),
            10.hBox,
            Text(
              "Software Engineer at AI-Bharata",
              style: context.bodyL.w500.copyWith(fontSize: 20),
            ),
            20.hBox,
            SizedBox(
              width: context.dWidth * 0.3,
              child: Text(
                "I am a Flutter Developer with 2 years of experience in building cross platform applications.",
                style: context.bodyM.w400
                    .col(Colors.white.withOpacity(0.5))
                    .copyWith(fontSize: 16),
                maxLines: 2,
              ),
            ),
            60.hBox,
            ValueListenableBuilder(
              valueListenable: currentSection,
              builder: (context, value, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: ["About", "Experience", "Projects"]
                      .asMap()
                      .entries
                      .map(
                        (e) => GestureDetector(
                          onTap: () {
                            currentSection.value = e.value;
                            observerController.animateTo(
                              index: e.key,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: SectionTile(
                            selected: e.value == value,
                            title: e.value,
                          ).pB(20),
                        ),
                      )
                      .toList(),
                );
              },
            ),
            40.hBox,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () async {
                    final uri = Uri.parse("https://github.com/RanjanKiran707/");
                    if (await canLaunchUrl(uri)) {
                      launchUrl(uri);
                    }
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    color: Colors.white54,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white54,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white54,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
