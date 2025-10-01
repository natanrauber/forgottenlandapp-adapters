import 'package:supabase/supabase.dart';

import '../../../../adapters.dart';

class MySupabaseClient implements IDatabaseClient {
  MySupabaseClient({
    required String databaseUrl,
    required String databaseKey,
  }) : _client = SupabaseClient(databaseUrl, databaseKey);

  final SupabaseClient _client;

  @override
  SupabaseQueryBuilder from(String table) => _client.from(table);
}
