import 'package:realm/realm.dart';

part 'item_test.g.dart';

@RealmModel()
class _ItemTest {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  late String name;
  late _ItemNested? item_nested;
}

@RealmModel(ObjectType.embeddedObject)
class _ItemNested {
  late String nested_name;
}
