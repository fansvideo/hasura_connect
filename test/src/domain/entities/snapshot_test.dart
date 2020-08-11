import 'package:hasura_connect/hasura_connect.dart';
import 'package:hasura_connect/src/domain/models/query.dart';
import 'package:test/test.dart';

void main() {
  test('map snapshot', () {
    final snapshot = Snapshot(query: Query(document: 'null'));
    final snapshot2 = snapshot.map((event) => event.toString());
    snapshot.add(1);
    expect(snapshot2, emitsInOrder(['1', '2']));
    snapshot.add(2);
  });
}
