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
    String name, {
    ItemNested? item_nested,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'item_nested', item_nested);
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
  ItemNested? get item_nested =>
      RealmObjectBase.get<ItemNested>(this, 'item_nested') as ItemNested?;
  @override
  set item_nested(covariant ItemNested? value) =>
      RealmObjectBase.set(this, 'item_nested', value);

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
      SchemaProperty('item_nested', RealmPropertyType.object,
          optional: true, linkTarget: 'ItemNested'),
    ]);
  }
}

class ItemNested extends _ItemNested
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ItemNested(
    String nested_name,
  ) {
    RealmObjectBase.set(this, 'nested_name', nested_name);
  }

  ItemNested._();

  @override
  String get nested_name =>
      RealmObjectBase.get<String>(this, 'nested_name') as String;
  @override
  set nested_name(String value) =>
      RealmObjectBase.set(this, 'nested_name', value);

  @override
  Stream<RealmObjectChanges<ItemNested>> get changes =>
      RealmObjectBase.getChanges<ItemNested>(this);

  @override
  ItemNested freeze() => RealmObjectBase.freezeObject<ItemNested>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(ItemNested._);
    return const SchemaObject(
        ObjectType.embeddedObject, ItemNested, 'ItemNested', [
      SchemaProperty('nested_name', RealmPropertyType.string),
    ]);
  }
}
