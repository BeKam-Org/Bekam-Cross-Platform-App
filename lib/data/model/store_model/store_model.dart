// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';

class StoreModel {
  StoreModel({
    this.vector,
    this.nameMarket,
    this.status,
    this.infoOne,
    this.id,
  }) {
    vector = vector ?? GlobalAppSVG.imgVector;
    nameMarket = nameMarket ?? "Starbucks";
    status = status ?? "Open";
    infoOne = infoOne ?? "Coffee";
    id = id ?? "";
  }

  String? vector;

  String? nameMarket;

  String? status;

  String? infoOne;

  String? id;
}
