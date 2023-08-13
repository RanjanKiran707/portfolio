import 'package:flutter/material.dart';
import 'package:portfolio/home/widgets/left_view.dart';
import 'package:portfolio/home/widgets/right_view.dart';
import 'package:portfolio/utils/extensions.dart';
import 'package:scrollview_observer/scrollview_observer.dart';

final curHoverTile = ValueNotifier<int?>(null);

final currentSection = ValueNotifier<String>("About");

class HomeDesktopView extends StatefulWidget {
  const HomeDesktopView({super.key});

  @override
  State<HomeDesktopView> createState() => _HomeDesktopViewState();
}

class _HomeDesktopViewState extends State<HomeDesktopView> {
  Offset? _position;

  ScrollController scrollController = ScrollController();
  late ListObserverController observerController;

  @override
  void initState() {
    observerController = ListObserverController(controller: scrollController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Listener(
        onPointerHover: (event) {
          setState(() {
            _position = event.localPosition;
          });
        },
        child: Scaffold(
          backgroundColor: const Color(0xff0f172a),
          body: Stack(
            children: [
              if (_position != null)
                Positioned(
                  left: _position!.dx - 300,
                  top: _position!.dy - 300,
                  child: Container(
                    width: 600,
                    height: 600,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        center: Alignment(0, 0),
                        radius: 1.0,
                        colors: [
                          Color.fromRGBO(29, 78, 216, 0.1),
                          Colors.transparent,
                        ],
                        stops: [0.2, 1.0],
                      ),
                    ),
                  ),
                ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                height: context.dHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: LeftView(observerController: observerController),
                    ),
                    Expanded(
                      flex: 1,
                      child: RightView(
                        observerController: observerController,
                        scrollController: scrollController,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTile extends StatefulWidget {
  const SectionTile({
    Key? key,
    required this.selected,
    required this.title,
  }) : super(key: key);

  final bool selected;
  final String title;

  @override
  State<SectionTile> createState() => _SectionTileState();
}

class _SectionTileState extends State<SectionTile> {
  bool _hover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          _hover = true;
        });
      },
      onExit: (event) {
        setState(() {
          _hover = false;
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeInOut,
            height: 2,
            width: _hover || widget.selected ? 90 : 40,
            color: _hover || widget.selected ? Colors.white : Colors.white54,
          ),
          10.wBox,
          Text(
            widget.title.toUpperCase(),
            style: context.bodyM
                .col(_hover || widget.selected ? Colors.white : Colors.white54)
                .bold,
          ),
        ],
      ),
    );
  }
}
