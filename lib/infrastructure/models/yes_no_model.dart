import 'package:chat_app/domain/entities/message.dart';

class YesNoModel {
  YesNoModel({required this.answer, required this.forced, required this.image});

  final String answer;
  final bool forced;
  final String image;

  factory YesNoModel.formJsonMap(Map<String, dynamic> json) => YesNoModel(
    answer: json['answer'],
    forced: json['forced'],
    image: json['image'],
  );

  Map<String, dynamic> toJsonMap() => {
    'answer': answer,
    'forced': forced,
    'image': image,
  };

  Message toMessageEntity() => Message(
    text: answer == 'yes' ? 'Si' : 'No',
    fromWho: FromWho.hers,
    imageUrl: image,
  );
}
