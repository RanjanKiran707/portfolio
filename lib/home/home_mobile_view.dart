import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/home/widgets/experience_tile.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/constants.dart';

class HomeMobileView extends StatefulWidget {
  const HomeMobileView({super.key});

  @override
  State<HomeMobileView> createState() => _HomeMobileViewState();
}

class _HomeMobileViewState extends State<HomeMobileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff0f172a),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ranjan P",
                style:
                    context.headL.w700.copyWith(fontSize: 43).col(Colors.white),
              ),
              10.hBox,
              Text(
                "Software Engineer at AI-Bharata",
                style: context.bodyL.w500.copyWith(fontSize: 18),
              ),
              20.hBox,
              Text(
                "I am a Flutter Developer with 2 years of experience in building cross platform applications.",
                style: context.bodyM.w400
                    .col(Colors.white.withOpacity(0.5))
                    .copyWith(fontSize: 16),
                maxLines: 2,
              ),
              25.hBox,
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () async {
                      final uri =
                          Uri.parse("https://github.com/RanjanKiran707/");
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
              100.hBox,
              Text(
                "ABOUT",
                style: context.bodyM
                    .copyWith(fontSize: 14, letterSpacing: 1.5)
                    .bold,
              ),
              40.hBox,
              EasyRichText(
                about,
                defaultStyle: context.bodyM
                    .col(Colors.white54)
                    .copyWith(fontSize: 16, height: 1.5),
                patternList: [
                  EasyRichTextPattern(
                    targetString: "clean, structured code",
                    style:
                        context.bodyM.bold.copyWith(fontSize: 16, height: 1.5),
                  )
                ],
              ),
              60.hBox,
              Text(
                "EXPERIENCE",
                style: context.bodyM
                    .copyWith(fontSize: 14, letterSpacing: 1.5)
                    .bold,
              ),
              40.hBox,
              ...expList.map((e) => ExpTileMob(details: e)).toList(),
              60.hBox,
              Text(
                "PROJECTS",
                style: context.bodyM
                    .copyWith(fontSize: 14, letterSpacing: 1.5)
                    .bold,
              ),
              40.hBox,
              ...projectList.map((e) => ProjectTileMob(details: e)).toList(),
              Linkify(
                text: bottomText,
                style:
                    context.bodyS.copyWith(height: 1.5, color: Colors.white54),
                onOpen: (link) async {
                  if (await canLaunchUrl(Uri.parse(link.url))) {
                    launchUrl(Uri.parse(link.url));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Cannot open link")));
                  }
                },
              ),
            ],
          ).pH(30).pT(40),
        ),
      ),
    );
  }
}

class ProjectTileMob extends StatelessWidget {
  const ProjectTileMob({
    Key? key,
    required this.details,
  }) : super(key: key);

  final Map details;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${details["title"]}",
          style: context.bodyM.col(Colors.white).w600,
        ),
        10.hBox,
        Text(
          "${details["description"]}",
          style: context.bodyS
              .copyWith(height: 1.5, color: Colors.white54, fontSize: 14),
        ),
        10.hBox,
        Wrap(
          spacing: 10,
          runSpacing: 5,
          children: (details["skills"] as List<String>)
              .map((e) => CustomChip(text: e))
              .toList(),
        ),
        15.hBox,
        CachedNetworkImage(
          imageUrl: details["img"],
          width: 100,
        ),
        40.hBox,
      ],
    );
  }
}

class ExpTileMob extends StatelessWidget {
  const ExpTileMob({
    Key? key,
    required this.details,
  }) : super(key: key);

  final Map details;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${details["start"]} - ${details["end"]}",
          style: context.bodyM.col(Colors.white54),
        ),
        10.hBox,
        Text(
          "${details["title"]} · ${details["company"]}",
          style: context.bodyM.col(Colors.white).w600,
        ),
        10.hBox,
        Text(
          "${details["description"]}",
          style: context.bodyS
              .copyWith(height: 1.5, color: Colors.white54, fontSize: 14),
        ),
        10.hBox,
        Wrap(
          spacing: 10,
          runSpacing: 5,
          children: (details["skills"] as List<String>)
              .map((e) => CustomChip(text: e))
              .toList(),
        ),
        40.hBox,
      ],
    );
  }
}
