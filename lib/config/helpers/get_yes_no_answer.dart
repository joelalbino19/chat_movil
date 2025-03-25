import 'package:chat_app/domain/entities/message.dart';
import 'package:chat_app/infrastructure/models/yes_no_model.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final String url = "https://yesno.wtf/api";

    final response = await _dio.get(url);

    final yesNoModel = YesNoModel.formJsonMap(response.data);
    return yesNoModel.toMessageEntity();
  }
}
