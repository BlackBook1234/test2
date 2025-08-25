import 'package:aichatbot/src/features/home/cubit/home_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../routes/app_route.gr.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  void sendMessage() async {
    final question = _controller.text;
    context.read<HomeCubit>().chat(context: context, messageText: question);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // const PremiumPlanCard(),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 100,
                  color: Colors.red,
                  child: InkWell(onTap: () => {
                    context.router.push(HomeRoute(children: [
                      ChatWithAiRoute(),
                    ]))
                  },),
                ),
                // IdeaCard(
                //   title: "Generate ideas and write articles",
                //   icon: Icons.edit_location_alt_outlined,
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => const SpeakToAIPage(),
                //       ),
                //     );
                //   },
                // ),
                const SizedBox(width: 10),
                // IdeaCard(
                //   title: "Generate ideas and write articles",
                //   icon: Icons.edit_location_alt_outlined,
                //   onTap: () {},
                // ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "History",
              style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Wrap(
            //   runSpacing: 14,
            //   children: List.generate(
            //     6,
            //     (index) {
            //       return ListTile(
            //         onTap: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => const ChatWithAiPage(),
            //               ));
            //         },
            //         titleTextStyle: theme.textTheme.bodyMedium?.copyWith(
            //           fontWeight: FontWeight.bold,
            //         ),
            //         title: const Text(
            //           "Give me ideas for writing an article",
            //           maxLines: 1,
            //           overflow: TextOverflow.ellipsis,
            //         ),
            //         trailing: const Icon(Icons.arrow_forward_rounded),
            //         leading: const Icon(Icons.chat_outlined),
            //       );
            //     },
            //   ),
            // )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_text_fill),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.folder),
            label: "Folders",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_alt_circle),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
