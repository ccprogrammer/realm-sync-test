import 'package:realm/realm.dart';

part 'item_test.g.dart';

@RealmModel()
class _ItemTest {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  late String name;
}
