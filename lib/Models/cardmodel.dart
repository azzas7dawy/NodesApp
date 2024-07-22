import 'package:hive/hive.dart';
part 'cardmodel.g.dart';
@HiveType(typeId: 0)
class CardModel extends HiveObject {
  late final String title;
  @HiveField(1)
  late final String content;
  @HiveField(2)
  late final String date;
  @HiveField(3)
  late final int color;

  CardModel({
    required this.title,
    required this.content, 
    required this.date, 
    required this.color});

}
