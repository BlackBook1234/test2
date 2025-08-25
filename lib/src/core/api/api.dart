import 'package:dio/dio.dart';
import 'settings/api_client.dart';

class API {
  static final API _instance = API._internal();
  API._internal();
  factory API() => _instance;
  final client = APIHttpClient();
  final int limit = 40;
  String apiKey = "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";

  Future<String?> chat({required String messageText}) async {
    try {
      var requestBody = <String, dynamic>{
        "max_tokens": 1024,
        "model": "anthropic/claude-sonnet-4",
        "messages": [
          {"role": "user", "content": messageText},
        ],
      };

      final response = await client.post(
        'https://openrouter.ai/api/v1/chat/completions',
        options: Options(headers: {
          "Authorization": "Bearer $apiKey",
          "Content-Type": "application/json",
          'HTTP-Referer': 'http://localhost:3000',
          'X-Title': 'MongolChatBot',
        }),
        data: requestBody,
      );

      return response["choices"][0]["message"]["content"];
    } catch (e) {
      print("💥 Chat алдаа: $e");
      return null;
    }
  }
}
