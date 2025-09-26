import 'package:postgrest/postgrest.dart';

abstract class IDatabaseClient {
  void setup(String? databaseUrl, String? databaseKey);
  PostgrestQueryBuilder<dynamic> from(String table);
}
