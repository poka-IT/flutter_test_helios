import 'package:flutter_test_helios/global.dart';
import 'package:flutter_test_helios/models/graphql/accounts.graphql.dart';
import 'package:graphql/client.dart';

class SquidService {
  static GraphQLClient? _client;

  static GraphQLClient get client {
    if (_client == null) {
      throw Exception(
          "GraphQLService not initialized. Call SquidService.init() first.");
    }
    return _client!;
  }

  static Future<void> init(List<String> endpoints) async {
    const squidEndpoint = 'https://gdev-squid.axiom-team.fr/v1beta1/relay';

    _client = GraphQLClient(
      cache: GraphQLCache(),
      link: WebSocketLink(squidEndpoint),
    );
  }
}

extension DurtGraphQLClient on GraphQLClient {
  Future<Query$GetAccountHistory$transferConnection?> getAccountHistory(
      String address,
      {int number = 10,
      String? cursor}) async {
    final variables = Variables$Query$GetAccountHistory(
        address: address, first: number, after: cursor);
    final options = Options$Query$GetAccountHistory(
      variables: variables,
      fetchPolicy: FetchPolicy.networkOnly,
    );

    try {
      final result = await query$GetAccountHistory(options);
      return result.parsedData?.transferConnection;
    } catch (e) {
      log.e('Failed to get account history: $e');
      return null;
    }
  }

  Stream<Subscription$SubAccountHistory$transferConnection$edges$node?>
      subAccountHistory(String address) {
    final variables =
        Variables$Subscription$SubAccountHistory(address: address);
    final options =
        Options$Subscription$SubAccountHistory(variables: variables);

    return subscribe$SubAccountHistory(options)
        .map((event) => event.parsedData?.transferConnection.edges.first.node);
  }
}
