import 'package:aichatbot/src/core/api/model/_model.dart';
import 'package:aichatbot/src/features/home/cubit/home_cubit.dart';
import 'package:aichatbot/src/routes/app_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart';

@RoutePage()
class ChatWithAiPage extends StatefulWidget {
  const ChatWithAiPage({super.key});

  @override
  State<ChatWithAiPage> createState() => _ChatWithAiPageState();
}

class _ChatWithAiPageState extends State<ChatWithAiPage> {
  final TextEditingController _controller = TextEditingController();
  final SpeechToText _speechToText = SpeechToText();
  bool _isListening = false;
  String _recognizedText = '';
  String _localeId = 'en-US';
  final FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  Future<void> _speak(String text) async {
    await flutterTts.setLanguage(_localeId); // Монгол хэл
    await flutterTts.setPitch(1.0);
    await flutterTts.setSpeechRate(0.45);
    await flutterTts.speak(text);
  }

  void sendMessage(String message) async {
    _controller.clear();
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
    });
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() => _isListening = false);
    sendMessage(_recognizedText);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state.isSpeaking) {
          _speak((state.messages.isEmpty ? [const Message(sender: MessageSender.bot, type: MessageType.text, text: "")] : state.messages).last.text!).then((value) => {
                context.read<HomeCubit>().changeStatusSpeak(false),
              });
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Chat with AI Bot"),
            actions: [
              IconButton(
                  onPressed: () {
                    context.router.push(SpeakToAIRoute());
                    // AutoRouter.of(context).push(SpeakToAIRoute());
                    // context.router.push(SpeakToAIRoute());
                  },
                  icon: const Icon(Icons.more_horiz))
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(_recognizedText),
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.only(bottom: 25),
                      itemBuilder: (context, index) {
                        return Align(
                          alignment: state.messages[index].sender == MessageSender.human ? Alignment.centerRight : Alignment.centerLeft,
                          child: state.messages[index].type == MessageType.text ? TextMessage(message: state.messages[index]) : MediaMessage(message: state.messages[index]),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(height: 20),
                      itemCount: state.messages.length,
                    ),
                  ),
                  if (state.isLoading) const CircularProgressIndicator(),
                  TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: "Type your message...",
                      prefixIcon: InkWell(onTap: () => _isListening ? _stopListening() : _startListening(), child: Icon(_isListening ? CupertinoIcons.stop_circle : CupertinoIcons.mic)),
                      suffixIcon: InkWell(
                        onTap: () {
                          if (state.isLoading || _controller.text.isEmpty) {
                            return;
                          }
                          sendMessage(_controller.text);
                        },
                        child: const Icon(Icons.send),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class TextMessage extends StatelessWidget {
  const TextMessage({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      constraints: BoxConstraints(maxWidth: size.width * 0.75),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: message.backgroundColor,
        borderRadius: message.borderRadius,
      ),
      child: Text(
        message.text!,
        style: TextStyle(color: message.textColor),
      ),
    );
  }
}

class MediaMessage extends StatelessWidget {
  const MediaMessage({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: size.width * 0.75),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: message.border,
              color: message.backgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(4),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      message.mediaUrl!,
                      height: 350,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  message.text!,
                  style: TextStyle(color: message.textColor),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(Icons.thumb_up),
                iconSize: 18,
              ),
              const SizedBox(width: 10),
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(Icons.thumb_down),
                iconSize: 18,
              ),
              const Spacer(),
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(Icons.copy),
                iconSize: 18,
              ),
            ],
          )
        ],
      ),
    );
  }
}

extension MessageExtension on Message {
  Color get textColor {
    switch (sender) {
      case MessageSender.bot:
        return Colors.white;
      case MessageSender.human:
        return const Color(0xff232729);
    }
  }

  Color get backgroundColor {
    switch (sender) {
      case MessageSender.bot:
        return const Color(0xff313638);
      case MessageSender.human:
        return const Color.fromRGBO(137, 217, 242, 1);
    }
  }

  BorderRadius get borderRadius {
    switch (sender) {
      case MessageSender.bot:
        return const BorderRadius.only(
          topLeft: Radius.circular(18),
          bottomLeft: Radius.circular(18),
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(4),
        );
      case MessageSender.human:
        return const BorderRadius.only(
          topLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
          topRight: Radius.circular(18),
          bottomLeft: Radius.circular(4),
        );
    }
  }

  BoxBorder? get border {
    switch (sender) {
      case MessageSender.bot:
        return Border.all(color: Colors.grey.withOpacity(0.3));
      case MessageSender.human:
        return null;
    }
  }
}
