import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_sync/item_test.dart';
import 'package:realm/realm.dart';

import 'dart:math' as math;

App? app;
User? user;
late Realm realm;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  app = App(AppConfiguration('sync-test-zyqrh'));

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

    realm = Realm(Configuration.flexibleSync(user!, [ItemTest.schema]));
    updateSubscriptions();
  }

  Future<void> updateSubscriptions() async {
    realm.subscriptions.update((mutableSubscriptions) {
      mutableSubscriptions.clear();

      mutableSubscriptions.add(realm.all<ItemTest>());
    });

    log('BEFORE WAITING SYNC');
    setState(() {});
    await realm.subscriptions.waitForSynchronization();
  }

  Future<void> addSyncItem() async {
    final newItem = ItemTest(ObjectId(), 'Test Number: ${math.Random().nextInt(999)}');
    realm.write<ItemTest>(() => realm.add<ItemTest>(newItem));
    setState(() {});
    log('Succeded');
  }

  Future<void> getSyncItem() async {
    final tmpRealm = realm.all<ItemTest>();
    setState(() {});
    log('tmpRealm: ${tmpRealm.length}');
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
                      addSyncItem();
                    },
                    child: const Text('Add'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      getSyncItem();
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
                StreamBuilder<RealmResultsChanges<ItemTest>>(
                  stream: realm.all<ItemTest>().changes,
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
                              title: Text(
                                '${item.id}',
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
