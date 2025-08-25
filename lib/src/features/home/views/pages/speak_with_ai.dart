import 'package:aichatbot/src/core/api/model/_model.dart';
import 'package:aichatbot/src/core/sdk/constants/assets.dart';
import 'package:aichatbot/src/features/home/cubit/home_cubit.dart';
import 'package:aichatbot/src/routes/app_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart';

@RoutePage()
class SpeakToAIPage extends StatefulWidget {
  const SpeakToAIPage({super.key});

  @override
  State<SpeakToAIPage> createState() => _SpeakToAIPageState();
}

class _SpeakToAIPageState extends State<SpeakToAIPage> with SingleTickerProviderStateMixin {
  final SpeechToText _speechToText = SpeechToText();
  bool _isListening = false;
  String _recognizedText = '';
  String _localeId = 'en-US';
  final FlutterTts flutterTts = FlutterTts();
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _animation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _initSpeech();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _speak(String text) async {
    await flutterTts.setLanguage(_localeId);
    for (int i = 0; i < text.length; i++) {
      await Future.delayed(const Duration(milliseconds: 50));
      context.read<HomeCubit>().updateSpokenLength(i + 1);
    }

    await flutterTts.speak(text);
  }

  void sendMessage(String message) async {
    if (message.isEmpty) {
      return;
    }
    context.read<HomeCubit>().chat(context: context, messageText: message);
  }

  Future<void> _initSpeech() async {
    bool available = await _speechToText.initialize(
      onStatus: (status) {
        print('🔄 Статус: $status');
        if (status == 'done') {
          setState(() => _isListening = false);
        }
      },
      onError: (error) {
        print('❌ Алдаа: $error');
      },
    );

    if (available) {
      var locales = await _speechToText.locales();
      var mongolianLocale = locales.firstWhere(
        (locale) => locale.localeId.startsWith(_localeId),
        orElse: () => locales.first,
      );
      setState(() {
        _localeId = mongolianLocale.localeId;
      });
    } else {
      print('🎙️ Speech recognition боломжгүй байна');
    }
  }

  void _startListening() async {
    await _speechToText.listen(
      onResult: (result) {
        setState(() {
          _recognizedText = result.recognizedWords;
        });
      },
      localeId: _localeId,
    );
    context.read<HomeCubit>().changeStatusLoading(true);
    setState(() {
      _isListening = true;
      _controller.repeat(reverse: true);
    });
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {
      _isListening = false;
      _controller.stop();
      _controller.reset();
    });
    sendMessage(_recognizedText);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state.isSpeaking) {
          _recognizedText = '';
          _speak(state.messages.last.text!).then((value) => {
                context.read<HomeCubit>().changeStatusSpeak(false),
              });
        }
      },
      builder: (context, state) {
        final fullText = (state.messages.isEmpty ? [const Message(sender: MessageSender.bot, type: MessageType.text, text: "")] : state.messages).last.text ?? '';
        return Scaffold(
          backgroundColor: const Color(0xFF222222),
          appBar: AppBar(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xFF222222),
            title: const Text("Speaking to AI Bot"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Image.asset(
                  Assets.robot,
                  height: 200,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: fullText.substring(0, state.spokenLength.clamp(0, fullText.length)),
                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: fullText.substring(state.spokenLength.clamp(0, fullText.length)),
                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 55,
                  height: 55,
                  child: IconButton.filledTonal(
                    onPressed: () {
                      context.router.push(const ChatWithAiRoute());
                    },
                    icon: const Icon(Icons.chat_outlined),
                    style: IconButton.styleFrom(
                      backgroundColor: const Color(0xff313638),
                    ),
                    color: Colors.white,
                  ),
                ),
                ScaleTransition(
                  scale: _animation,
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 20,
                        ),
                      ],
                    ),
                    child: IconButton.filledTonal(
                      onPressed: () {
                        _isListening ? _stopListening() : _startListening();
                      },
                      iconSize: 40,
                      icon: Icon(_isListening ? CupertinoIcons.stop_circle : CupertinoIcons.mic),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.grey.withOpacity(0.8),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 55,
                  height: 55,
                  child: IconButton.filledTonal(
                    onPressed: () {
                      context.router.push(const MBTilesProviderRoute());
                    },
                    icon: const Icon(Icons.more_horiz),
                    style: IconButton.styleFrom(
                      backgroundColor: const Color(0xff313638),
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
