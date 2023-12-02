// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_config_sync.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Config extends _Config with RealmEntity, RealmObjectBase, EmbeddedObject {
  Config(
    String name,
    String icon,
    int max,
    int min,
    String type, {
    Info? info,
    Poll? poll,
    Iterable<String> candidate_ids = const [],
    Iterable<String> round_ids = const [],
  }) {
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'icon', icon);
    RealmObjectBase.set(this, 'max', max);
    RealmObjectBase.set(this, 'min', min);
    RealmObjectBase.set(this, 'type', type);
    RealmObjectBase.set(this, 'info', info);
    RealmObjectBase.set(this, 'poll', poll);
    RealmObjectBase.set<RealmList<String>>(
        this, 'candidate_ids', RealmList<String>(candidate_ids));
    RealmObjectBase.set<RealmList<String>>(
        this, 'round_ids', RealmList<String>(round_ids));
  }

  Config._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get icon => RealmObjectBase.get<String>(this, 'icon') as String;
  @override
  set icon(String value) => RealmObjectBase.set(this, 'icon', value);

  @override
  int get max => RealmObjectBase.get<int>(this, 'max') as int;
  @override
  set max(int value) => RealmObjectBase.set(this, 'max', value);

  @override
  int get min => RealmObjectBase.get<int>(this, 'min') as int;
  @override
  set min(int value) => RealmObjectBase.set(this, 'min', value);

  @override
  String get type => RealmObjectBase.get<String>(this, 'type') as String;
  @override
  set type(String value) => RealmObjectBase.set(this, 'type', value);

  @override
  RealmList<String> get candidate_ids =>
      RealmObjectBase.get<String>(this, 'candidate_ids') as RealmList<String>;
  @override
  set candidate_ids(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get round_ids =>
      RealmObjectBase.get<String>(this, 'round_ids') as RealmList<String>;
  @override
  set round_ids(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  Info? get info => RealmObjectBase.get<Info>(this, 'info') as Info?;
  @override
  set info(covariant Info? value) => RealmObjectBase.set(this, 'info', value);

  @override
  Poll? get poll => RealmObjectBase.get<Poll>(this, 'poll') as Poll?;
  @override
  set poll(covariant Poll? value) => RealmObjectBase.set(this, 'poll', value);

  @override
  Stream<RealmObjectChanges<Config>> get changes =>
      RealmObjectBase.getChanges<Config>(this);

  @override
  Config freeze() => RealmObjectBase.freezeObject<Config>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Config._);
    return const SchemaObject(ObjectType.embeddedObject, Config, 'Config', [
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('icon', RealmPropertyType.string),
      SchemaProperty('max', RealmPropertyType.int),
      SchemaProperty('min', RealmPropertyType.int),
      SchemaProperty('type', RealmPropertyType.string),
      SchemaProperty('candidate_ids', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('round_ids', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('info', RealmPropertyType.object,
          optional: true, linkTarget: 'Info'),
      SchemaProperty('poll', RealmPropertyType.object,
          optional: true, linkTarget: 'Poll'),
    ]);
  }
}

class Round extends _Round with RealmEntity, RealmObjectBase, EmbeddedObject {
  Round(
    String id,
    String thumbnail,
    String name,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'thumbnail', thumbnail);
    RealmObjectBase.set(this, 'name', name);
  }

  Round._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get thumbnail =>
      RealmObjectBase.get<String>(this, 'thumbnail') as String;
  @override
  set thumbnail(String value) => RealmObjectBase.set(this, 'thumbnail', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<Round>> get changes =>
      RealmObjectBase.getChanges<Round>(this);

  @override
  Round freeze() => RealmObjectBase.freezeObject<Round>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Round._);
    return const SchemaObject(ObjectType.embeddedObject, Round, 'Round', [
      SchemaProperty('id', RealmPropertyType.string),
      SchemaProperty('thumbnail', RealmPropertyType.string),
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }
}

class Candidate extends _Candidate
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  Candidate(
    String id,
    String thumbnail,
    String name,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'thumbnail', thumbnail);
    RealmObjectBase.set(this, 'name', name);
  }

  Candidate._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get thumbnail =>
      RealmObjectBase.get<String>(this, 'thumbnail') as String;
  @override
  set thumbnail(String value) => RealmObjectBase.set(this, 'thumbnail', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<Candidate>> get changes =>
      RealmObjectBase.getChanges<Candidate>(this);

  @override
  Candidate freeze() => RealmObjectBase.freezeObject<Candidate>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Candidate._);
    return const SchemaObject(
        ObjectType.embeddedObject, Candidate, 'Candidate', [
      SchemaProperty('id', RealmPropertyType.string),
      SchemaProperty('thumbnail', RealmPropertyType.string),
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }
}

class Info extends _Info with RealmEntity, RealmObjectBase, EmbeddedObject {
  Info({
    Iterable<Round> rounds = const [],
    Iterable<Candidate> candidates = const [],
  }) {
    RealmObjectBase.set<RealmList<Round>>(
        this, 'rounds', RealmList<Round>(rounds));
    RealmObjectBase.set<RealmList<Candidate>>(
        this, 'candidates', RealmList<Candidate>(candidates));
  }

  Info._();

  @override
  RealmList<Round> get rounds =>
      RealmObjectBase.get<Round>(this, 'rounds') as RealmList<Round>;
  @override
  set rounds(covariant RealmList<Round> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Candidate> get candidates =>
      RealmObjectBase.get<Candidate>(this, 'candidates')
          as RealmList<Candidate>;
  @override
  set candidates(covariant RealmList<Candidate> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Info>> get changes =>
      RealmObjectBase.getChanges<Info>(this);

  @override
  Info freeze() => RealmObjectBase.freezeObject<Info>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Info._);
    return const SchemaObject(ObjectType.embeddedObject, Info, 'Info', [
      SchemaProperty('rounds', RealmPropertyType.object,
          linkTarget: 'Round', collectionType: RealmCollectionType.list),
      SchemaProperty('candidates', RealmPropertyType.object,
          linkTarget: 'Candidate', collectionType: RealmCollectionType.list),
    ]);
  }
}

class PollRound extends _PollRound
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  PollRound(
    String id,
    String label,
    String thumbnail,
    bool started,
    bool finished, {
    Iterable<PollCandidate> candidates = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'label', label);
    RealmObjectBase.set(this, 'thumbnail', thumbnail);
    RealmObjectBase.set(this, 'started', started);
    RealmObjectBase.set(this, 'finished', finished);
    RealmObjectBase.set<RealmList<PollCandidate>>(
        this, 'candidates', RealmList<PollCandidate>(candidates));
  }

  PollRound._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get label => RealmObjectBase.get<String>(this, 'label') as String;
  @override
  set label(String value) => RealmObjectBase.set(this, 'label', value);

  @override
  String get thumbnail =>
      RealmObjectBase.get<String>(this, 'thumbnail') as String;
  @override
  set thumbnail(String value) => RealmObjectBase.set(this, 'thumbnail', value);

  @override
  bool get started => RealmObjectBase.get<bool>(this, 'started') as bool;
  @override
  set started(bool value) => RealmObjectBase.set(this, 'started', value);

  @override
  bool get finished => RealmObjectBase.get<bool>(this, 'finished') as bool;
  @override
  set finished(bool value) => RealmObjectBase.set(this, 'finished', value);

  @override
  RealmList<PollCandidate> get candidates =>
      RealmObjectBase.get<PollCandidate>(this, 'candidates')
          as RealmList<PollCandidate>;
  @override
  set candidates(covariant RealmList<PollCandidate> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<PollRound>> get changes =>
      RealmObjectBase.getChanges<PollRound>(this);

  @override
  PollRound freeze() => RealmObjectBase.freezeObject<PollRound>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(PollRound._);
    return const SchemaObject(
        ObjectType.embeddedObject, PollRound, 'PollRound', [
      SchemaProperty('id', RealmPropertyType.string),
      SchemaProperty('label', RealmPropertyType.string),
      SchemaProperty('thumbnail', RealmPropertyType.string),
      SchemaProperty('started', RealmPropertyType.bool),
      SchemaProperty('finished', RealmPropertyType.bool),
      SchemaProperty('candidates', RealmPropertyType.object,
          linkTarget: 'PollCandidate',
          collectionType: RealmCollectionType.list),
    ]);
  }
}

class PollCandidate extends _PollCandidate
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  PollCandidate(
    String id,
    String thumbnail,
    String label,
    bool started,
    bool removed,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'thumbnail', thumbnail);
    RealmObjectBase.set(this, 'label', label);
    RealmObjectBase.set(this, 'started', started);
    RealmObjectBase.set(this, 'removed', removed);
  }

  PollCandidate._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get thumbnail =>
      RealmObjectBase.get<String>(this, 'thumbnail') as String;
  @override
  set thumbnail(String value) => RealmObjectBase.set(this, 'thumbnail', value);

  @override
  String get label => RealmObjectBase.get<String>(this, 'label') as String;
  @override
  set label(String value) => RealmObjectBase.set(this, 'label', value);

  @override
  bool get started => RealmObjectBase.get<bool>(this, 'started') as bool;
  @override
  set started(bool value) => RealmObjectBase.set(this, 'started', value);

  @override
  bool get removed => RealmObjectBase.get<bool>(this, 'removed') as bool;
  @override
  set removed(bool value) => RealmObjectBase.set(this, 'removed', value);

  @override
  Stream<RealmObjectChanges<PollCandidate>> get changes =>
      RealmObjectBase.getChanges<PollCandidate>(this);

  @override
  PollCandidate freeze() => RealmObjectBase.freezeObject<PollCandidate>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(PollCandidate._);
    return const SchemaObject(
        ObjectType.embeddedObject, PollCandidate, 'PollCandidate', [
      SchemaProperty('id', RealmPropertyType.string),
      SchemaProperty('thumbnail', RealmPropertyType.string),
      SchemaProperty('label', RealmPropertyType.string),
      SchemaProperty('started', RealmPropertyType.bool),
      SchemaProperty('removed', RealmPropertyType.bool),
    ]);
  }
}

class Poll extends _Poll with RealmEntity, RealmObjectBase, EmbeddedObject {
  Poll(
    bool ended,
    String current_round,
    int current_index, {
    Iterable<PollRound> round = const [],
    Iterable<PollCandidate> candidate = const [],
  }) {
    RealmObjectBase.set(this, 'ended', ended);
    RealmObjectBase.set(this, 'current_round', current_round);
    RealmObjectBase.set(this, 'current_index', current_index);
    RealmObjectBase.set<RealmList<PollRound>>(
        this, 'round', RealmList<PollRound>(round));
    RealmObjectBase.set<RealmList<PollCandidate>>(
        this, 'candidate', RealmList<PollCandidate>(candidate));
  }

  Poll._();

  @override
  bool get ended => RealmObjectBase.get<bool>(this, 'ended') as bool;
  @override
  set ended(bool value) => RealmObjectBase.set(this, 'ended', value);

  @override
  String get current_round =>
      RealmObjectBase.get<String>(this, 'current_round') as String;
  @override
  set current_round(String value) =>
      RealmObjectBase.set(this, 'current_round', value);

  @override
  int get current_index =>
      RealmObjectBase.get<int>(this, 'current_index') as int;
  @override
  set current_index(int value) =>
      RealmObjectBase.set(this, 'current_index', value);

  @override
  RealmList<PollRound> get round =>
      RealmObjectBase.get<PollRound>(this, 'round') as RealmList<PollRound>;
  @override
  set round(covariant RealmList<PollRound> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<PollCandidate> get candidate =>
      RealmObjectBase.get<PollCandidate>(this, 'candidate')
          as RealmList<PollCandidate>;
  @override
  set candidate(covariant RealmList<PollCandidate> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Poll>> get changes =>
      RealmObjectBase.getChanges<Poll>(this);

  @override
  Poll freeze() => RealmObjectBase.freezeObject<Poll>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Poll._);
    return const SchemaObject(ObjectType.embeddedObject, Poll, 'Poll', [
      SchemaProperty('ended', RealmPropertyType.bool),
      SchemaProperty('current_round', RealmPropertyType.string),
      SchemaProperty('current_index', RealmPropertyType.int),
      SchemaProperty('round', RealmPropertyType.object,
          linkTarget: 'PollRound', collectionType: RealmCollectionType.list),
      SchemaProperty('candidate', RealmPropertyType.object,
          linkTarget: 'PollCandidate',
          collectionType: RealmCollectionType.list),
    ]);
  }
}

class TimeConfig extends _TimeConfig
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  TimeConfig(
    bool immediate_start,
    bool never_ends,
    String start_time,
    String end_time,
  ) {
    RealmObjectBase.set(this, 'immediate_start', immediate_start);
    RealmObjectBase.set(this, 'never_ends', never_ends);
    RealmObjectBase.set(this, 'start_time', start_time);
    RealmObjectBase.set(this, 'end_time', end_time);
  }

  TimeConfig._();

  @override
  bool get immediate_start =>
      RealmObjectBase.get<bool>(this, 'immediate_start') as bool;
  @override
  set immediate_start(bool value) =>
      RealmObjectBase.set(this, 'immediate_start', value);

  @override
  bool get never_ends => RealmObjectBase.get<bool>(this, 'never_ends') as bool;
  @override
  set never_ends(bool value) => RealmObjectBase.set(this, 'never_ends', value);

  @override
  String get start_time =>
      RealmObjectBase.get<String>(this, 'start_time') as String;
  @override
  set start_time(String value) =>
      RealmObjectBase.set(this, 'start_time', value);

  @override
  String get end_time =>
      RealmObjectBase.get<String>(this, 'end_time') as String;
  @override
  set end_time(String value) => RealmObjectBase.set(this, 'end_time', value);

  @override
  Stream<RealmObjectChanges<TimeConfig>> get changes =>
      RealmObjectBase.getChanges<TimeConfig>(this);

  @override
  TimeConfig freeze() => RealmObjectBase.freezeObject<TimeConfig>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(TimeConfig._);
    return const SchemaObject(
        ObjectType.embeddedObject, TimeConfig, 'TimeConfig', [
      SchemaProperty('immediate_start', RealmPropertyType.bool),
      SchemaProperty('never_ends', RealmPropertyType.bool),
      SchemaProperty('start_time', RealmPropertyType.string),
      SchemaProperty('end_time', RealmPropertyType.string),
    ]);
  }
}

class PollConfig extends _PollConfig
    with RealmEntity, RealmObjectBase, RealmObject {
  PollConfig(
    String id,
    String name,
    String type,
    String community,
    int epoch,
    String status,
    String poll_id,
    bool set_time_frame, {
    Config? config,
    TimeConfig? time_config,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'type', type);
    RealmObjectBase.set(this, 'community', community);
    RealmObjectBase.set(this, 'epoch', epoch);
    RealmObjectBase.set(this, 'status', status);
    RealmObjectBase.set(this, 'poll_id', poll_id);
    RealmObjectBase.set(this, 'config', config);
    RealmObjectBase.set(this, 'set_time_frame', set_time_frame);
    RealmObjectBase.set(this, 'time_config', time_config);
  }

  PollConfig._();

  @override
  String get id => RealmObjectBase.get<String>(this, '_id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get type => RealmObjectBase.get<String>(this, 'type') as String;
  @override
  set type(String value) => RealmObjectBase.set(this, 'type', value);

  @override
  String get community =>
      RealmObjectBase.get<String>(this, 'community') as String;
  @override
  set community(String value) => RealmObjectBase.set(this, 'community', value);

  @override
  int get epoch => RealmObjectBase.get<int>(this, 'epoch') as int;
  @override
  set epoch(int value) => RealmObjectBase.set(this, 'epoch', value);

  @override
  String get status => RealmObjectBase.get<String>(this, 'status') as String;
  @override
  set status(String value) => RealmObjectBase.set(this, 'status', value);

  @override
  String get poll_id => RealmObjectBase.get<String>(this, 'poll_id') as String;
  @override
  set poll_id(String value) => RealmObjectBase.set(this, 'poll_id', value);

  @override
  Config? get config => RealmObjectBase.get<Config>(this, 'config') as Config?;
  @override
  set config(covariant Config? value) =>
      RealmObjectBase.set(this, 'config', value);

  @override
  bool get set_time_frame =>
      RealmObjectBase.get<bool>(this, 'set_time_frame') as bool;
  @override
  set set_time_frame(bool value) =>
      RealmObjectBase.set(this, 'set_time_frame', value);

  @override
  TimeConfig? get time_config =>
      RealmObjectBase.get<TimeConfig>(this, 'time_config') as TimeConfig?;
  @override
  set time_config(covariant TimeConfig? value) =>
      RealmObjectBase.set(this, 'time_config', value);

  @override
  Stream<RealmObjectChanges<PollConfig>> get changes =>
      RealmObjectBase.getChanges<PollConfig>(this);

  @override
  PollConfig freeze() => RealmObjectBase.freezeObject<PollConfig>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(PollConfig._);
    return const SchemaObject(
        ObjectType.realmObject, PollConfig, 'PollConfig', [
      SchemaProperty('id', RealmPropertyType.string,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('type', RealmPropertyType.string),
      SchemaProperty('community', RealmPropertyType.string),
      SchemaProperty('epoch', RealmPropertyType.int),
      SchemaProperty('status', RealmPropertyType.string),
      SchemaProperty('poll_id', RealmPropertyType.string),
      SchemaProperty('config', RealmPropertyType.object,
          optional: true, linkTarget: 'Config'),
      SchemaProperty('set_time_frame', RealmPropertyType.bool),
      SchemaProperty('time_config', RealmPropertyType.object,
          optional: true, linkTarget: 'TimeConfig'),
    ]);
  }
}
