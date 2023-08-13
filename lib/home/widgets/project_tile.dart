import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/home/widgets/experience_tile.dart';
import 'package:portfolio/utils/extensions.dart';

class ProjectTile extends StatefulWidget {
  const ProjectTile({
    Key? key,
    required this.details,
  }) : super(key: key);

  final Map details;

  @override
  State<ProjectTile> createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile>
    with SingleTickerProviderStateMixin {
  bool hover = false;
  Color normalColor = Colors.transparent;

  Color hoverColor = const Color.fromRGBO(45, 212, 191, 0.1);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          hover = true;
        });
      },
      onExit: (event) {
        setState(() {
          hover = false;
        });
      },
      child: AnimatedContainer(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: hover ? hoverColor : normalColor,
          borderRadius: BorderRadius.circular(20),
        ),
        // color: hover ? hoverColor : normalColor,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CachedNetworkImage(
                    imageUrl: widget.details["img"],
                  )
                ],
              ),
            ),
            10.wBox,
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "${widget.details["title"]}",
                          style: context.bodyM
                              .col(hover
                                  ? const Color.fromRGBO(94, 234, 212, 1)
                                  : Colors.white)
                              .w600,
                        ),
                      ),
                      // 5.wBox,
                      // Transform.rotate(
                      //   angle: -pi / 4,
                      //   child: Icon(
                      //     Icons.arrow_forward,
                      //     color: hover
                      //         ? const Color.fromRGBO(94, 234, 212, 1)
                      //         : Colors.white,
                      //     size: 15,
                      //   ),
                      // ),
                    ],
                  ),
                  10.hBox,
                  Text(
                    "${widget.details["description"]}",
                    style: context.bodyS.copyWith(
                        height: 1.5, color: Colors.white54, fontSize: 14),
                  ),
                  10.hBox,
                  Wrap(
                    spacing: 10,
                    runSpacing: 5,
                    children: (widget.details["skills"] as List<String>)
                        .map((e) => CustomChip(text: e))
                        .toList(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
