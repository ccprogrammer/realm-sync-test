// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_test.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class ItemTest extends _ItemTest
    with RealmEntity, RealmObjectBase, RealmObject {
  ItemTest(
    ObjectId id,
    String name,
  ) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'name', name);
  }

  ItemTest._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<ItemTest>> get changes =>
      RealmObjectBase.getChanges<ItemTest>(this);

  @override
  ItemTest freeze() => RealmObjectBase.freezeObject<ItemTest>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ItemTest._);
    return const SchemaObject(ObjectType.realmObject, ItemTest, 'ItemTest', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }
}
