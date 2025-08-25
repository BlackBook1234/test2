import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class IntroItem {
  String title, subtitle, image, backgroundImage;
  IntroItem({required this.title, required this.subtitle, required this.image, required this.backgroundImage});
}

@RoutePage()
class InstructionPage extends StatefulWidget {
  const InstructionPage({Key? key}) : super(key: key);

  @override
  State<InstructionPage> createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  late int currentIndex;
  bool value = false;
  bool isChecked = false;

  final ScrollController controller = ScrollController(initialScrollOffset: 0);

  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Stack(
        children: <Widget>[
          Column(
            children: [],
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                  padding: EdgeInsets.only(bottom: (30), left: (30), right: (30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Align(
                      //     alignment: Alignment.bottomLeft,
                      //     child: SingleChildScrollView(
                      //       padding: const EdgeInsets.only(left: 5, right: 5),
                      //       controller: controller,
                      //       scrollDirection: Axis.horizontal,
                      //       child: AnimatedSmoothIndicator(
                      //         count: introItems.length,
                      //         activeIndex: currentIndex,
                      //         axisDirection: Axis.horizontal,
                      //         effect: ExpandingDotsEffect(expansionFactor: 4, activeDotColor: MonpayTheme().color.onlyWhite, dotHeight: 6, dotWidth: 6, dotColor: MonpayTheme().color.onlyWhite.withOpacity(0.5)),
                      //       ),
                      //     )),
                      // Align(
                      //     alignment: Alignment.centerRight,
                      //     child: Container(
                      //       key: const Key("right_icon"),
                      //       constraints: const BoxConstraints(maxHeight: 40, maxWidth: 40),
                      //       child: TextButton(
                      //         style: ButtonStyle(
                      //           backgroundColor: MaterialStateProperty.all(
                      //             MonpayTheme().color.onlyWhite,
                      //           ),
                      //         ),
                      //         onPressed: () {
                      //           if (currentIndex != introItems.length - 1) {
                      //             buttonCarouselController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.linear);
                      //           } else {
                      //             SharedPrefs().isInstructionShow = isChecked;
                      //             AutoRouter.of(context).replace(const HomeRoute());
                      //           }
                      //         },
                      //         child: Icon(Icons.arrow_forward, color: MonpayTheme().color.deepPurple_A200),
                      //       ),
                      //     ))
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
