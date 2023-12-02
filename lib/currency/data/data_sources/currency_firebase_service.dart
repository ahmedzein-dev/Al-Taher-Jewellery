import 'package:firebase_database/firebase_database.dart';

import '../../../core/error/exceptions.dart';
import '../models/gold_model.dart';

class GoldPriceFirebaseService {
  final FirebaseDatabase firebaseDatabase;

  GoldPriceFirebaseService({
    required this.firebaseDatabase,
  });

  Future<GoldModel> getGoldPrice() async {
    try {
      final DatabaseReference databaseReference =
          firebaseDatabase.ref('gold price');
      DatabaseEvent event = await databaseReference.once();
      Map? data = event.snapshot.value as Map?;
      if (data == null || data.isEmpty) {
        throw const CustomException.unKnownException(
            'فشلت عملية تحميل أسعار الذهب.');
      }
      return GoldModel.modelFromSnapShot(data);
    } catch (e) {
      rethrow;
    }
  }
}
