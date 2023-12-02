import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_sync/item_test.dart';
import 'package:my_sync/poll_config_sync.dart';
import 'package:realm/realm.dart';

import 'dart:math' as math;

App? app;
User? user;
late Realm realm;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  app = App(AppConfiguration('devicesync-mntoj'));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    user = await app!.logIn(Credentials.anonymous());

    realm = Realm(Configuration.flexibleSync(user!, [
      ItemTest.schema,
      ItemNested.schema,
      //
      PollConfig.schema,
      TimeConfig.schema,
      Config.schema,
      Info.schema,
      Poll.schema,
      Round.schema,
      Candidate.schema,
      PollCandidate.schema,
      PollRound.schema,
    ]));
    updateSubscriptions();
  }

  Future<void> updateSubscriptions() async {
    realm.subscriptions.update((mutableSubscriptions) {
      mutableSubscriptions.clear();

      mutableSubscriptions.add(realm.all<ItemTest>());
      mutableSubscriptions.add(realm.all<PollConfig>());
    });

    log('BEFORE WAITING SYNC');
    setState(() {});
    await realm.subscriptions.waitForSynchronization();
  }

  Future<void> addSyncItem() async {
    final newItem = ItemTest(
      ObjectId(),
      'Test Number: ${math.Random().nextInt(999)}',
      item_nested: ItemNested('Nested item here'),
    );
    realm.write<ItemTest>(() => realm.add<ItemTest>(newItem));
    setState(() {});
    log('Succeded');
  }

  Future<void> getSyncItem() async {
    final tmpRealm = realm.all<ItemTest>();
    setState(() {});
    log('tmpRealm: ${tmpRealm.length}');
  }

  Future<void> addSyncPoll() async {
    final newItem = PollConfig(
      ObjectId().toString(),
      'Audience ${math.Random().nextInt(99)}',
      'type',
      'rmt',
      99999,
      'status',
      'poll_id',
      false,
      config: Config(
        'name',
        'icon',
        9,
        1,
        'type',
        candidate_ids: ["0sxcyo", "c6fg23", "zwe9bf", "y4v1b8", "yyqlcg"],
        info: Info(
          rounds: [
            Round('ob3b65', '', 'Classical'),
            Round('14dfg1', '', 'folk'),
            Round('46dfgh', '', 'western'),
          ],
          candidates: [
            Candidate('uj4556', '', 'INDIA'),
            Candidate('hgjt35', '', 'INDONESIA'),
            Candidate('hju5t6', '', 'NIGERIA'),
            Candidate('gh3453', '', 'UK'),
          ],
        ),
        poll: Poll(
          false,
          'ob3b65',
          0,
          round: [
            PollRound(
              'ob3b65',
              'label',
              'thumbnail',
              true,
              false,
              candidates: [
                PollCandidate(
                  'gh3453',
                  'thumbnail',
                  'label',
                  false,
                  false,
                ),
                PollCandidate(
                  'hgjt35',
                  'thumbnail',
                  'label',
                  false,
                  false,
                ),
                PollCandidate(
                  'hju5t6',
                  'thumbnail',
                  'label',
                  false,
                  false,
                ),
                PollCandidate(
                  'gh3453',
                  'thumbnail',
                  'label',
                  false,
                  false,
                ),
              ],
            ),
          ],
          candidate: [
            PollCandidate(
              'ob3b65',
              'label',
              'thumbnail',
              true,
              false,
            ),
            PollCandidate(
              'fhgdrf',
              'label',
              'thumbnail',
              true,
              false,
            ),
          ],
        ),
      ),
      time_config: TimeConfig(
        true,
        false,
        "01-01-2023",
        "12-12-2023",
      ),
    );
    realm.write<PollConfig>(() => realm.add<PollConfig>(newItem));
    setState(() {});
    log('Succeded');
  }

  Future<void> getSyncPoll() async {
    final tmpRealm = realm.all<PollConfig>();
    setState(() {});
    log('tmpRealm: ${tmpRealm.first}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      addSyncPoll();
                    },
                    child: const Text('Add'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      getSyncPoll();
                    },
                    child: const Text('Get'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      updateSubscriptions();
                    },
                    child: const Text('Update'),
                  ),
                ],
              ),
              if (user != null)
                StreamBuilder<RealmResultsChanges<PollConfig>>(
                  stream: realm.all<PollConfig>().changes,
                  builder: (context, snapshot) {
                    final data = snapshot.data;

                    if (data == null) return const SizedBox();

                    final results = data.results;

                    return Expanded(
                      child: ListView.separated(
                          shrinkWrap: true,
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 8),
                          itemCount: results.length,
                          itemBuilder: (context, index) {
                            final item = results[index];

                            return ListTile(
                              isThreeLine: true,
                              title: Text(
                                item.id,
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              subtitle: Text(
                                item.name,
                                style: const TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
