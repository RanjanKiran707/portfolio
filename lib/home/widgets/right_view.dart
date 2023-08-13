import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:portfolio/home/home_desktop_view.dart';
import 'package:portfolio/home/widgets/experience_tile.dart';
import 'package:portfolio/home/widgets/project_tile.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:scrollview_observer/scrollview_observer.dart';
import 'package:url_launcher/url_launcher.dart';

class RightView extends StatelessWidget {
  const RightView({
    super.key,
    required this.observerController,
    required this.scrollController,
  });

  final ListObserverController observerController;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: UnconstrainedBox(
        constrainedAxis: Axis.vertical,
        child: SizedBox(
          width: (context.dWidth * 0.4).clamp(100, 500),
          child: ListViewObserver(
            controller: observerController,
            toNextOverPercent: 0.8,
            onObserve: (obs) {
              int first = obs.displayingChildIndexList.first;

              if (first == 0) {
                if (currentSection.value == "About") {
                  return;
                }
                currentSection.value = "About";
              } else if (first == 1) {
                if (currentSection.value == "Experience") {
                  return;
                }
                currentSection.value = "Experience";
              } else if (first == 2) {
                if (currentSection.value == "Projects") {
                  return;
                }
                currentSection.value = "Projects";
              }
            },
            child: ScrollConfiguration(
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: ListView(
                controller: scrollController,
                children: [
                  EasyRichText(
                    about,
                    defaultStyle: context.bodyM.col(Colors.white54),
                    patternList: [
                      EasyRichTextPattern(
                        targetString: "clean, structured code",
                        style: context.bodyM.bold,
                      )
                    ],
                  ).pH(20).pT(50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                        expList.map((e) => ExpCard(details: e).pB(20)).toList(),
                  ).pT(40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: projectList
                        .map((e) => ProjectTile(details: e).pB(20))
                        .toList(),
                  ).pT(20),
                  Linkify(
                    text: bottomText,
                    style: context.bodyS
                        .copyWith(height: 1.5, color: Colors.white54),
                    onOpen: (link) async {
                      if (await canLaunchUrl(Uri.parse(link.url))) {
                        launchUrl(Uri.parse(link.url));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Cannot open link")));
                      }
                    },
                  ).pT(40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
