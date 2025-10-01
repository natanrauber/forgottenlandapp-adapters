import 'package:postgrest/postgrest.dart';

abstract class IDatabaseClient {
  PostgrestQueryBuilder<dynamic> from(String table);
}
