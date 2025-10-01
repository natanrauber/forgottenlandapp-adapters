import 'package:supabase/supabase.dart';

import '../../../../adapters.dart';

class MySupabaseClient implements IDatabaseClient {
  MySupabaseClient({
    required String databaseUrl,
    required String databaseKey,
  }) : _client = SupabaseClient(databaseUrl, databaseKey);

  SupabaseClient _client;

  @override
  void setup(String? databaseUrl, String? databaseKey) {
    if (databaseUrl == null) throw 'Missing required databaseUrl';
    if (databaseKey == null) throw 'Missing required databaseKey';
    _client = SupabaseClient(databaseUrl, databaseKey);
  }

  @override
  SupabaseQueryBuilder from(String table) => _client.from(table);
}
