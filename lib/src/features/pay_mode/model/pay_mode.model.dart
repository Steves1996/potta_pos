import 'package:potta_pos/generated/assets.dart';

class PayModeModel {
  final String assetName;
  final String title;
  final String value;

  PayModeModel({required this.assetName, required this.title, required this.value});
}

List<PayModeModel> payModeList = [
  PayModeModel(assetName: Assets.imagesCash, title: 'Cash', value: 'Cash'),
  PayModeModel(assetName: Assets.imagesMomo, title: 'MTN Mobile Money', value: 'momo'),
  PayModeModel(assetName: Assets.imagesOm, title: 'Orange Money', value: 'om'),
];
