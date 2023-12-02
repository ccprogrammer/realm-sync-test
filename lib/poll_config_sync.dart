// ignore_for_file: non_constant_identifier_names

import 'package:realm/realm.dart';
part 'poll_config_sync.g.dart';

@RealmModel(ObjectType.embeddedObject)
class _Config {
  late String name;
  late String icon;
  late int max;
  late int min;
  late String type;
  late List<String> candidate_ids;
  late List<String> round_ids;
  late _Info? info;
  late _Poll? poll;
}

@RealmModel(ObjectType.embeddedObject)
class _Round {
  late String id;
  late String thumbnail;
  late String name;
}

@RealmModel(ObjectType.embeddedObject)
class _Candidate {
  late String id;
  late String thumbnail;
  late String name;
}

@RealmModel(ObjectType.embeddedObject)
class _Info {
  late List<_Round> rounds;
  late List<_Candidate> candidates;
}

@RealmModel(ObjectType.embeddedObject)
class _PollRound {
  late String id;
  late String label;
  late String thumbnail;
  late bool started;
  late bool finished;
  late List<_PollCandidate> candidates;
}

@RealmModel(ObjectType.embeddedObject)
class _PollCandidate {
  late String id;
  late String thumbnail;
  late String label;
  late bool started;
  late bool removed;
}

@RealmModel(ObjectType.embeddedObject)
class _Poll {
  late bool ended;
  late String current_round;
  late int current_index;
  late List<_PollRound> round;
  late List<_PollCandidate> candidate;
}

@RealmModel(ObjectType.embeddedObject)
class _TimeConfig {
  late bool immediate_start;
  late bool never_ends;
  late String start_time;
  late String end_time;
}

@RealmModel()
class _PollConfig {
  @MapTo("_id")
  @PrimaryKey()
  late String id;
  late String name;
  late String type;
  late String community;
  late int epoch;
  late String status;
  late String poll_id;
  late _Config? config;
  late bool set_time_frame;
  late _TimeConfig? time_config;
}
