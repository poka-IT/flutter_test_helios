import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$GetAccountHistory {
  factory Variables$Query$GetAccountHistory({
    required String address,
    String? after,
    int? first,
  }) =>
      Variables$Query$GetAccountHistory._({
        r'address': address,
        if (after != null) r'after': after,
        if (first != null) r'first': first,
      });

  Variables$Query$GetAccountHistory._(this._$data);

  factory Variables$Query$GetAccountHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$address = data['address'];
    result$data['address'] = (l$address as String);
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    return Variables$Query$GetAccountHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  String get address => (_$data['address'] as String);

  String? get after => (_$data['after'] as String?);

  int? get first => (_$data['first'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$address = address;
    result$data['address'] = l$address;
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetAccountHistory<Variables$Query$GetAccountHistory>
      get copyWith => CopyWith$Variables$Query$GetAccountHistory(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAccountHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$address = address;
    final l$after = after;
    final l$first = first;
    return Object.hashAll([
      l$address,
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('first') ? l$first : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAccountHistory<TRes> {
  factory CopyWith$Variables$Query$GetAccountHistory(
    Variables$Query$GetAccountHistory instance,
    TRes Function(Variables$Query$GetAccountHistory) then,
  ) = _CopyWithImpl$Variables$Query$GetAccountHistory;

  factory CopyWith$Variables$Query$GetAccountHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAccountHistory;

  TRes call({
    String? address,
    String? after,
    int? first,
  });
}

class _CopyWithImpl$Variables$Query$GetAccountHistory<TRes>
    implements CopyWith$Variables$Query$GetAccountHistory<TRes> {
  _CopyWithImpl$Variables$Query$GetAccountHistory(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAccountHistory _instance;

  final TRes Function(Variables$Query$GetAccountHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address = _undefined,
    Object? after = _undefined,
    Object? first = _undefined,
  }) =>
      _then(Variables$Query$GetAccountHistory._({
        ..._instance._$data,
        if (address != _undefined && address != null)
          'address': (address as String),
        if (after != _undefined) 'after': (after as String?),
        if (first != _undefined) 'first': (first as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAccountHistory<TRes>
    implements CopyWith$Variables$Query$GetAccountHistory<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAccountHistory(this._res);

  TRes _res;

  call({
    String? address,
    String? after,
    int? first,
  }) =>
      _res;
}

class Query$GetAccountHistory {
  Query$GetAccountHistory({
    required this.transferConnection,
    this.$__typename = 'query_root',
  });

  factory Query$GetAccountHistory.fromJson(Map<String, dynamic> json) {
    final l$transferConnection = json['transferConnection'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountHistory(
      transferConnection: Query$GetAccountHistory$transferConnection.fromJson(
          (l$transferConnection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountHistory$transferConnection transferConnection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transferConnection = transferConnection;
    _resultData['transferConnection'] = l$transferConnection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transferConnection = transferConnection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transferConnection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAccountHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transferConnection = transferConnection;
    final lOther$transferConnection = other.transferConnection;
    if (l$transferConnection != lOther$transferConnection) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAccountHistory on Query$GetAccountHistory {
  CopyWith$Query$GetAccountHistory<Query$GetAccountHistory> get copyWith =>
      CopyWith$Query$GetAccountHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAccountHistory<TRes> {
  factory CopyWith$Query$GetAccountHistory(
    Query$GetAccountHistory instance,
    TRes Function(Query$GetAccountHistory) then,
  ) = _CopyWithImpl$Query$GetAccountHistory;

  factory CopyWith$Query$GetAccountHistory.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountHistory;

  TRes call({
    Query$GetAccountHistory$transferConnection? transferConnection,
    String? $__typename,
  });
  CopyWith$Query$GetAccountHistory$transferConnection<TRes>
      get transferConnection;
}

class _CopyWithImpl$Query$GetAccountHistory<TRes>
    implements CopyWith$Query$GetAccountHistory<TRes> {
  _CopyWithImpl$Query$GetAccountHistory(
    this._instance,
    this._then,
  );

  final Query$GetAccountHistory _instance;

  final TRes Function(Query$GetAccountHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transferConnection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountHistory(
        transferConnection:
            transferConnection == _undefined || transferConnection == null
                ? _instance.transferConnection
                : (transferConnection
                    as Query$GetAccountHistory$transferConnection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountHistory$transferConnection<TRes>
      get transferConnection {
    final local$transferConnection = _instance.transferConnection;
    return CopyWith$Query$GetAccountHistory$transferConnection(
        local$transferConnection, (e) => call(transferConnection: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountHistory<TRes>
    implements CopyWith$Query$GetAccountHistory<TRes> {
  _CopyWithStubImpl$Query$GetAccountHistory(this._res);

  TRes _res;

  call({
    Query$GetAccountHistory$transferConnection? transferConnection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountHistory$transferConnection<TRes>
      get transferConnection =>
          CopyWith$Query$GetAccountHistory$transferConnection.stub(_res);
}

const documentNodeQueryGetAccountHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAccountHistory'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'address')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '20')),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'transferConnection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'timestamp'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_or'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'fromId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value: VariableNode(name: NameNode(value: 'address')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'toId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value: VariableNode(name: NameNode(value: 'address')),
                        )
                      ]),
                    )
                  ]),
                ]),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'amount'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'timestamp'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'fromId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'from'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'identity'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'name'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: 'toId'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'to'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'identity'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'name'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetAccountHistory _parserFn$Query$GetAccountHistory(
        Map<String, dynamic> data) =>
    Query$GetAccountHistory.fromJson(data);
typedef OnQueryComplete$Query$GetAccountHistory = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAccountHistory?,
);

class Options$Query$GetAccountHistory
    extends graphql.QueryOptions<Query$GetAccountHistory> {
  Options$Query$GetAccountHistory({
    String? operationName,
    required Variables$Query$GetAccountHistory variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAccountHistory? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAccountHistory? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$GetAccountHistory(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAccountHistory,
          parserFn: _parserFn$Query$GetAccountHistory,
        );

  final OnQueryComplete$Query$GetAccountHistory? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAccountHistory
    extends graphql.WatchQueryOptions<Query$GetAccountHistory> {
  WatchOptions$Query$GetAccountHistory({
    String? operationName,
    required Variables$Query$GetAccountHistory variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAccountHistory? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetAccountHistory,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAccountHistory,
        );
}

class FetchMoreOptions$Query$GetAccountHistory
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAccountHistory({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetAccountHistory variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetAccountHistory,
        );
}

extension ClientExtension$Query$GetAccountHistory on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAccountHistory>> query$GetAccountHistory(
          Options$Query$GetAccountHistory options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetAccountHistory> watchQuery$GetAccountHistory(
          WatchOptions$Query$GetAccountHistory options) =>
      this.watchQuery(options);
  void writeQuery$GetAccountHistory({
    required Query$GetAccountHistory data,
    required Variables$Query$GetAccountHistory variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetAccountHistory),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAccountHistory? readQuery$GetAccountHistory({
    required Variables$Query$GetAccountHistory variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetAccountHistory),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAccountHistory.fromJson(result);
  }
}

class Query$GetAccountHistory$transferConnection {
  Query$GetAccountHistory$transferConnection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'TransferConnection',
  });

  factory Query$GetAccountHistory$transferConnection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountHistory$transferConnection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$GetAccountHistory$transferConnection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$GetAccountHistory$transferConnection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAccountHistory$transferConnection$edges> edges;

  final Query$GetAccountHistory$transferConnection$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAccountHistory$transferConnection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
        return false;
      }
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAccountHistory$transferConnection
    on Query$GetAccountHistory$transferConnection {
  CopyWith$Query$GetAccountHistory$transferConnection<
          Query$GetAccountHistory$transferConnection>
      get copyWith => CopyWith$Query$GetAccountHistory$transferConnection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountHistory$transferConnection<TRes> {
  factory CopyWith$Query$GetAccountHistory$transferConnection(
    Query$GetAccountHistory$transferConnection instance,
    TRes Function(Query$GetAccountHistory$transferConnection) then,
  ) = _CopyWithImpl$Query$GetAccountHistory$transferConnection;

  factory CopyWith$Query$GetAccountHistory$transferConnection.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAccountHistory$transferConnection;

  TRes call({
    List<Query$GetAccountHistory$transferConnection$edges>? edges,
    Query$GetAccountHistory$transferConnection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$GetAccountHistory$transferConnection$edges> Function(
              Iterable<
                  CopyWith$Query$GetAccountHistory$transferConnection$edges<
                      Query$GetAccountHistory$transferConnection$edges>>)
          _fn);
  CopyWith$Query$GetAccountHistory$transferConnection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$GetAccountHistory$transferConnection<TRes>
    implements CopyWith$Query$GetAccountHistory$transferConnection<TRes> {
  _CopyWithImpl$Query$GetAccountHistory$transferConnection(
    this._instance,
    this._then,
  );

  final Query$GetAccountHistory$transferConnection _instance;

  final TRes Function(Query$GetAccountHistory$transferConnection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountHistory$transferConnection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$GetAccountHistory$transferConnection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$GetAccountHistory$transferConnection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$GetAccountHistory$transferConnection$edges> Function(
                  Iterable<
                      CopyWith$Query$GetAccountHistory$transferConnection$edges<
                          Query$GetAccountHistory$transferConnection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map(
              (e) => CopyWith$Query$GetAccountHistory$transferConnection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$GetAccountHistory$transferConnection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$GetAccountHistory$transferConnection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountHistory$transferConnection<TRes>
    implements CopyWith$Query$GetAccountHistory$transferConnection<TRes> {
  _CopyWithStubImpl$Query$GetAccountHistory$transferConnection(this._res);

  TRes _res;

  call({
    List<Query$GetAccountHistory$transferConnection$edges>? edges,
    Query$GetAccountHistory$transferConnection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$GetAccountHistory$transferConnection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$GetAccountHistory$transferConnection$pageInfo.stub(
              _res);
}

class Query$GetAccountHistory$transferConnection$edges {
  Query$GetAccountHistory$transferConnection$edges({
    required this.node,
    this.$__typename = 'TransferEdge',
  });

  factory Query$GetAccountHistory$transferConnection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountHistory$transferConnection$edges(
      node: Query$GetAccountHistory$transferConnection$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountHistory$transferConnection$edges$node node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAccountHistory$transferConnection$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAccountHistory$transferConnection$edges
    on Query$GetAccountHistory$transferConnection$edges {
  CopyWith$Query$GetAccountHistory$transferConnection$edges<
          Query$GetAccountHistory$transferConnection$edges>
      get copyWith => CopyWith$Query$GetAccountHistory$transferConnection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountHistory$transferConnection$edges<TRes> {
  factory CopyWith$Query$GetAccountHistory$transferConnection$edges(
    Query$GetAccountHistory$transferConnection$edges instance,
    TRes Function(Query$GetAccountHistory$transferConnection$edges) then,
  ) = _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges;

  factory CopyWith$Query$GetAccountHistory$transferConnection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges;

  TRes call({
    Query$GetAccountHistory$transferConnection$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$GetAccountHistory$transferConnection$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges<TRes>
    implements CopyWith$Query$GetAccountHistory$transferConnection$edges<TRes> {
  _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges(
    this._instance,
    this._then,
  );

  final Query$GetAccountHistory$transferConnection$edges _instance;

  final TRes Function(Query$GetAccountHistory$transferConnection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountHistory$transferConnection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Query$GetAccountHistory$transferConnection$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountHistory$transferConnection$edges$node<TRes>
      get node {
    final local$node = _instance.node;
    return CopyWith$Query$GetAccountHistory$transferConnection$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges<TRes>
    implements CopyWith$Query$GetAccountHistory$transferConnection$edges<TRes> {
  _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges(this._res);

  TRes _res;

  call({
    Query$GetAccountHistory$transferConnection$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountHistory$transferConnection$edges$node<TRes>
      get node =>
          CopyWith$Query$GetAccountHistory$transferConnection$edges$node.stub(
              _res);
}

class Query$GetAccountHistory$transferConnection$edges$node {
  Query$GetAccountHistory$transferConnection$edges$node({
    required this.amount,
    required this.timestamp,
    this.fromId,
    this.from,
    this.toId,
    this.to,
    this.$__typename = 'Transfer',
  });

  factory Query$GetAccountHistory$transferConnection$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$amount = json['amount'];
    final l$timestamp = json['timestamp'];
    final l$fromId = json['fromId'];
    final l$from = json['from'];
    final l$toId = json['toId'];
    final l$to = json['to'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountHistory$transferConnection$edges$node(
      amount: (l$amount as int),
      timestamp: DateTime.parse((l$timestamp as String)),
      fromId: (l$fromId as String?),
      from: l$from == null
          ? null
          : Query$GetAccountHistory$transferConnection$edges$node$from.fromJson(
              (l$from as Map<String, dynamic>)),
      toId: (l$toId as String?),
      to: l$to == null
          ? null
          : Query$GetAccountHistory$transferConnection$edges$node$to.fromJson(
              (l$to as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int amount;

  final DateTime timestamp;

  final String? fromId;

  final Query$GetAccountHistory$transferConnection$edges$node$from? from;

  final String? toId;

  final Query$GetAccountHistory$transferConnection$edges$node$to? to;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$timestamp = timestamp;
    _resultData['timestamp'] = l$timestamp.toIso8601String();
    final l$fromId = fromId;
    _resultData['fromId'] = l$fromId;
    final l$from = from;
    _resultData['from'] = l$from?.toJson();
    final l$toId = toId;
    _resultData['toId'] = l$toId;
    final l$to = to;
    _resultData['to'] = l$to?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$amount = amount;
    final l$timestamp = timestamp;
    final l$fromId = fromId;
    final l$from = from;
    final l$toId = toId;
    final l$to = to;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$amount,
      l$timestamp,
      l$fromId,
      l$from,
      l$toId,
      l$to,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAccountHistory$transferConnection$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$timestamp = timestamp;
    final lOther$timestamp = other.timestamp;
    if (l$timestamp != lOther$timestamp) {
      return false;
    }
    final l$fromId = fromId;
    final lOther$fromId = other.fromId;
    if (l$fromId != lOther$fromId) {
      return false;
    }
    final l$from = from;
    final lOther$from = other.from;
    if (l$from != lOther$from) {
      return false;
    }
    final l$toId = toId;
    final lOther$toId = other.toId;
    if (l$toId != lOther$toId) {
      return false;
    }
    final l$to = to;
    final lOther$to = other.to;
    if (l$to != lOther$to) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAccountHistory$transferConnection$edges$node
    on Query$GetAccountHistory$transferConnection$edges$node {
  CopyWith$Query$GetAccountHistory$transferConnection$edges$node<
          Query$GetAccountHistory$transferConnection$edges$node>
      get copyWith =>
          CopyWith$Query$GetAccountHistory$transferConnection$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountHistory$transferConnection$edges$node<
    TRes> {
  factory CopyWith$Query$GetAccountHistory$transferConnection$edges$node(
    Query$GetAccountHistory$transferConnection$edges$node instance,
    TRes Function(Query$GetAccountHistory$transferConnection$edges$node) then,
  ) = _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node;

  factory CopyWith$Query$GetAccountHistory$transferConnection$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node;

  TRes call({
    int? amount,
    DateTime? timestamp,
    String? fromId,
    Query$GetAccountHistory$transferConnection$edges$node$from? from,
    String? toId,
    Query$GetAccountHistory$transferConnection$edges$node$to? to,
    String? $__typename,
  });
  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from<TRes>
      get from;
  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to<TRes>
      get to;
}

class _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node<TRes>
    implements
        CopyWith$Query$GetAccountHistory$transferConnection$edges$node<TRes> {
  _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node(
    this._instance,
    this._then,
  );

  final Query$GetAccountHistory$transferConnection$edges$node _instance;

  final TRes Function(Query$GetAccountHistory$transferConnection$edges$node)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? amount = _undefined,
    Object? timestamp = _undefined,
    Object? fromId = _undefined,
    Object? from = _undefined,
    Object? toId = _undefined,
    Object? to = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountHistory$transferConnection$edges$node(
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as int),
        timestamp: timestamp == _undefined || timestamp == null
            ? _instance.timestamp
            : (timestamp as DateTime),
        fromId: fromId == _undefined ? _instance.fromId : (fromId as String?),
        from: from == _undefined
            ? _instance.from
            : (from
                as Query$GetAccountHistory$transferConnection$edges$node$from?),
        toId: toId == _undefined ? _instance.toId : (toId as String?),
        to: to == _undefined
            ? _instance.to
            : (to as Query$GetAccountHistory$transferConnection$edges$node$to?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from<TRes>
      get from {
    final local$from = _instance.from;
    return local$from == null
        ? CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from
            .stub(_then(_instance))
        : CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from(
            local$from, (e) => call(from: e));
  }

  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to<TRes>
      get to {
    final local$to = _instance.to;
    return local$to == null
        ? CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to
            .stub(_then(_instance))
        : CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to(
            local$to, (e) => call(to: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node<
        TRes>
    implements
        CopyWith$Query$GetAccountHistory$transferConnection$edges$node<TRes> {
  _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node(
      this._res);

  TRes _res;

  call({
    int? amount,
    DateTime? timestamp,
    String? fromId,
    Query$GetAccountHistory$transferConnection$edges$node$from? from,
    String? toId,
    Query$GetAccountHistory$transferConnection$edges$node$to? to,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from<TRes>
      get from =>
          CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from
              .stub(_res);

  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to<TRes>
      get to =>
          CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to
              .stub(_res);
}

class Query$GetAccountHistory$transferConnection$edges$node$from {
  Query$GetAccountHistory$transferConnection$edges$node$from({
    this.identity,
    this.$__typename = 'Account',
  });

  factory Query$GetAccountHistory$transferConnection$edges$node$from.fromJson(
      Map<String, dynamic> json) {
    final l$identity = json['identity'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountHistory$transferConnection$edges$node$from(
      identity: l$identity == null
          ? null
          : Query$GetAccountHistory$transferConnection$edges$node$from$identity
              .fromJson((l$identity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountHistory$transferConnection$edges$node$from$identity?
      identity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$identity = identity;
    _resultData['identity'] = l$identity?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$identity = identity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$identity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountHistory$transferConnection$edges$node$from) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$identity = identity;
    final lOther$identity = other.identity;
    if (l$identity != lOther$identity) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAccountHistory$transferConnection$edges$node$from
    on Query$GetAccountHistory$transferConnection$edges$node$from {
  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from<
          Query$GetAccountHistory$transferConnection$edges$node$from>
      get copyWith =>
          CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from<
    TRes> {
  factory CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from(
    Query$GetAccountHistory$transferConnection$edges$node$from instance,
    TRes Function(Query$GetAccountHistory$transferConnection$edges$node$from)
        then,
  ) = _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node$from;

  factory CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node$from;

  TRes call({
    Query$GetAccountHistory$transferConnection$edges$node$from$identity?
        identity,
    String? $__typename,
  });
  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from$identity<
      TRes> get identity;
}

class _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node$from<
        TRes>
    implements
        CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from<
            TRes> {
  _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node$from(
    this._instance,
    this._then,
  );

  final Query$GetAccountHistory$transferConnection$edges$node$from _instance;

  final TRes Function(
      Query$GetAccountHistory$transferConnection$edges$node$from) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? identity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountHistory$transferConnection$edges$node$from(
        identity: identity == _undefined
            ? _instance.identity
            : (identity
                as Query$GetAccountHistory$transferConnection$edges$node$from$identity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from$identity<
      TRes> get identity {
    final local$identity = _instance.identity;
    return local$identity == null
        ? CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from$identity
            .stub(_then(_instance))
        : CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from$identity(
            local$identity, (e) => call(identity: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node$from<
        TRes>
    implements
        CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node$from(
      this._res);

  TRes _res;

  call({
    Query$GetAccountHistory$transferConnection$edges$node$from$identity?
        identity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from$identity<
          TRes>
      get identity =>
          CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from$identity
              .stub(_res);
}

class Query$GetAccountHistory$transferConnection$edges$node$from$identity {
  Query$GetAccountHistory$transferConnection$edges$node$from$identity({
    required this.name,
    this.$__typename = 'Identity',
  });

  factory Query$GetAccountHistory$transferConnection$edges$node$from$identity.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountHistory$transferConnection$edges$node$from$identity(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountHistory$transferConnection$edges$node$from$identity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAccountHistory$transferConnection$edges$node$from$identity
    on Query$GetAccountHistory$transferConnection$edges$node$from$identity {
  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from$identity<
          Query$GetAccountHistory$transferConnection$edges$node$from$identity>
      get copyWith =>
          CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from$identity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from$identity<
    TRes> {
  factory CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from$identity(
    Query$GetAccountHistory$transferConnection$edges$node$from$identity
        instance,
    TRes Function(
            Query$GetAccountHistory$transferConnection$edges$node$from$identity)
        then,
  ) = _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node$from$identity;

  factory CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from$identity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node$from$identity;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node$from$identity<
        TRes>
    implements
        CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from$identity<
            TRes> {
  _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node$from$identity(
    this._instance,
    this._then,
  );

  final Query$GetAccountHistory$transferConnection$edges$node$from$identity
      _instance;

  final TRes Function(
          Query$GetAccountHistory$transferConnection$edges$node$from$identity)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountHistory$transferConnection$edges$node$from$identity(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node$from$identity<
        TRes>
    implements
        CopyWith$Query$GetAccountHistory$transferConnection$edges$node$from$identity<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node$from$identity(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountHistory$transferConnection$edges$node$to {
  Query$GetAccountHistory$transferConnection$edges$node$to({
    this.identity,
    this.$__typename = 'Account',
  });

  factory Query$GetAccountHistory$transferConnection$edges$node$to.fromJson(
      Map<String, dynamic> json) {
    final l$identity = json['identity'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountHistory$transferConnection$edges$node$to(
      identity: l$identity == null
          ? null
          : Query$GetAccountHistory$transferConnection$edges$node$to$identity
              .fromJson((l$identity as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetAccountHistory$transferConnection$edges$node$to$identity?
      identity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$identity = identity;
    _resultData['identity'] = l$identity?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$identity = identity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$identity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAccountHistory$transferConnection$edges$node$to) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$identity = identity;
    final lOther$identity = other.identity;
    if (l$identity != lOther$identity) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAccountHistory$transferConnection$edges$node$to
    on Query$GetAccountHistory$transferConnection$edges$node$to {
  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to<
          Query$GetAccountHistory$transferConnection$edges$node$to>
      get copyWith =>
          CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to<
    TRes> {
  factory CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to(
    Query$GetAccountHistory$transferConnection$edges$node$to instance,
    TRes Function(Query$GetAccountHistory$transferConnection$edges$node$to)
        then,
  ) = _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node$to;

  factory CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node$to;

  TRes call({
    Query$GetAccountHistory$transferConnection$edges$node$to$identity? identity,
    String? $__typename,
  });
  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to$identity<
      TRes> get identity;
}

class _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node$to<
        TRes>
    implements
        CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to<
            TRes> {
  _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node$to(
    this._instance,
    this._then,
  );

  final Query$GetAccountHistory$transferConnection$edges$node$to _instance;

  final TRes Function(Query$GetAccountHistory$transferConnection$edges$node$to)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? identity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountHistory$transferConnection$edges$node$to(
        identity: identity == _undefined
            ? _instance.identity
            : (identity
                as Query$GetAccountHistory$transferConnection$edges$node$to$identity?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to$identity<
      TRes> get identity {
    final local$identity = _instance.identity;
    return local$identity == null
        ? CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to$identity
            .stub(_then(_instance))
        : CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to$identity(
            local$identity, (e) => call(identity: e));
  }
}

class _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node$to<
        TRes>
    implements
        CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node$to(
      this._res);

  TRes _res;

  call({
    Query$GetAccountHistory$transferConnection$edges$node$to$identity? identity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to$identity<
          TRes>
      get identity =>
          CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to$identity
              .stub(_res);
}

class Query$GetAccountHistory$transferConnection$edges$node$to$identity {
  Query$GetAccountHistory$transferConnection$edges$node$to$identity({
    required this.name,
    this.$__typename = 'Identity',
  });

  factory Query$GetAccountHistory$transferConnection$edges$node$to$identity.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountHistory$transferConnection$edges$node$to$identity(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAccountHistory$transferConnection$edges$node$to$identity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAccountHistory$transferConnection$edges$node$to$identity
    on Query$GetAccountHistory$transferConnection$edges$node$to$identity {
  CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to$identity<
          Query$GetAccountHistory$transferConnection$edges$node$to$identity>
      get copyWith =>
          CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to$identity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to$identity<
    TRes> {
  factory CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to$identity(
    Query$GetAccountHistory$transferConnection$edges$node$to$identity instance,
    TRes Function(
            Query$GetAccountHistory$transferConnection$edges$node$to$identity)
        then,
  ) = _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node$to$identity;

  factory CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to$identity.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node$to$identity;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node$to$identity<
        TRes>
    implements
        CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to$identity<
            TRes> {
  _CopyWithImpl$Query$GetAccountHistory$transferConnection$edges$node$to$identity(
    this._instance,
    this._then,
  );

  final Query$GetAccountHistory$transferConnection$edges$node$to$identity
      _instance;

  final TRes Function(
      Query$GetAccountHistory$transferConnection$edges$node$to$identity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountHistory$transferConnection$edges$node$to$identity(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node$to$identity<
        TRes>
    implements
        CopyWith$Query$GetAccountHistory$transferConnection$edges$node$to$identity<
            TRes> {
  _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$edges$node$to$identity(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetAccountHistory$transferConnection$pageInfo {
  Query$GetAccountHistory$transferConnection$pageInfo({
    required this.endCursor,
    required this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$GetAccountHistory$transferConnection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$GetAccountHistory$transferConnection$pageInfo(
      endCursor: (l$endCursor as String),
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String endCursor;

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAccountHistory$transferConnection$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAccountHistory$transferConnection$pageInfo
    on Query$GetAccountHistory$transferConnection$pageInfo {
  CopyWith$Query$GetAccountHistory$transferConnection$pageInfo<
          Query$GetAccountHistory$transferConnection$pageInfo>
      get copyWith =>
          CopyWith$Query$GetAccountHistory$transferConnection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAccountHistory$transferConnection$pageInfo<
    TRes> {
  factory CopyWith$Query$GetAccountHistory$transferConnection$pageInfo(
    Query$GetAccountHistory$transferConnection$pageInfo instance,
    TRes Function(Query$GetAccountHistory$transferConnection$pageInfo) then,
  ) = _CopyWithImpl$Query$GetAccountHistory$transferConnection$pageInfo;

  factory CopyWith$Query$GetAccountHistory$transferConnection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAccountHistory$transferConnection$pageInfo<TRes>
    implements
        CopyWith$Query$GetAccountHistory$transferConnection$pageInfo<TRes> {
  _CopyWithImpl$Query$GetAccountHistory$transferConnection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$GetAccountHistory$transferConnection$pageInfo _instance;

  final TRes Function(Query$GetAccountHistory$transferConnection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAccountHistory$transferConnection$pageInfo(
        endCursor: endCursor == _undefined || endCursor == null
            ? _instance.endCursor
            : (endCursor as String),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$pageInfo<
        TRes>
    implements
        CopyWith$Query$GetAccountHistory$transferConnection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$GetAccountHistory$transferConnection$pageInfo(
      this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Subscription$SubAccountHistory {
  factory Variables$Subscription$SubAccountHistory({required String address}) =>
      Variables$Subscription$SubAccountHistory._({
        r'address': address,
      });

  Variables$Subscription$SubAccountHistory._(this._$data);

  factory Variables$Subscription$SubAccountHistory.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$address = data['address'];
    result$data['address'] = (l$address as String);
    return Variables$Subscription$SubAccountHistory._(result$data);
  }

  Map<String, dynamic> _$data;

  String get address => (_$data['address'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$address = address;
    result$data['address'] = l$address;
    return result$data;
  }

  CopyWith$Variables$Subscription$SubAccountHistory<
          Variables$Subscription$SubAccountHistory>
      get copyWith => CopyWith$Variables$Subscription$SubAccountHistory(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Subscription$SubAccountHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$address = address;
    return Object.hashAll([l$address]);
  }
}

abstract class CopyWith$Variables$Subscription$SubAccountHistory<TRes> {
  factory CopyWith$Variables$Subscription$SubAccountHistory(
    Variables$Subscription$SubAccountHistory instance,
    TRes Function(Variables$Subscription$SubAccountHistory) then,
  ) = _CopyWithImpl$Variables$Subscription$SubAccountHistory;

  factory CopyWith$Variables$Subscription$SubAccountHistory.stub(TRes res) =
      _CopyWithStubImpl$Variables$Subscription$SubAccountHistory;

  TRes call({String? address});
}

class _CopyWithImpl$Variables$Subscription$SubAccountHistory<TRes>
    implements CopyWith$Variables$Subscription$SubAccountHistory<TRes> {
  _CopyWithImpl$Variables$Subscription$SubAccountHistory(
    this._instance,
    this._then,
  );

  final Variables$Subscription$SubAccountHistory _instance;

  final TRes Function(Variables$Subscription$SubAccountHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Variables$Subscription$SubAccountHistory._({
        ..._instance._$data,
        if (address != _undefined && address != null)
          'address': (address as String),
      }));
}

class _CopyWithStubImpl$Variables$Subscription$SubAccountHistory<TRes>
    implements CopyWith$Variables$Subscription$SubAccountHistory<TRes> {
  _CopyWithStubImpl$Variables$Subscription$SubAccountHistory(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Subscription$SubAccountHistory {
  Subscription$SubAccountHistory({required this.transferConnection});

  factory Subscription$SubAccountHistory.fromJson(Map<String, dynamic> json) {
    final l$transferConnection = json['transferConnection'];
    return Subscription$SubAccountHistory(
        transferConnection:
            Subscription$SubAccountHistory$transferConnection.fromJson(
                (l$transferConnection as Map<String, dynamic>)));
  }

  final Subscription$SubAccountHistory$transferConnection transferConnection;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transferConnection = transferConnection;
    _resultData['transferConnection'] = l$transferConnection.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transferConnection = transferConnection;
    return Object.hashAll([l$transferConnection]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$SubAccountHistory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transferConnection = transferConnection;
    final lOther$transferConnection = other.transferConnection;
    if (l$transferConnection != lOther$transferConnection) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$SubAccountHistory
    on Subscription$SubAccountHistory {
  CopyWith$Subscription$SubAccountHistory<Subscription$SubAccountHistory>
      get copyWith => CopyWith$Subscription$SubAccountHistory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$SubAccountHistory<TRes> {
  factory CopyWith$Subscription$SubAccountHistory(
    Subscription$SubAccountHistory instance,
    TRes Function(Subscription$SubAccountHistory) then,
  ) = _CopyWithImpl$Subscription$SubAccountHistory;

  factory CopyWith$Subscription$SubAccountHistory.stub(TRes res) =
      _CopyWithStubImpl$Subscription$SubAccountHistory;

  TRes call(
      {Subscription$SubAccountHistory$transferConnection? transferConnection});
  CopyWith$Subscription$SubAccountHistory$transferConnection<TRes>
      get transferConnection;
}

class _CopyWithImpl$Subscription$SubAccountHistory<TRes>
    implements CopyWith$Subscription$SubAccountHistory<TRes> {
  _CopyWithImpl$Subscription$SubAccountHistory(
    this._instance,
    this._then,
  );

  final Subscription$SubAccountHistory _instance;

  final TRes Function(Subscription$SubAccountHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transferConnection = _undefined}) =>
      _then(Subscription$SubAccountHistory(
          transferConnection:
              transferConnection == _undefined || transferConnection == null
                  ? _instance.transferConnection
                  : (transferConnection
                      as Subscription$SubAccountHistory$transferConnection)));

  CopyWith$Subscription$SubAccountHistory$transferConnection<TRes>
      get transferConnection {
    final local$transferConnection = _instance.transferConnection;
    return CopyWith$Subscription$SubAccountHistory$transferConnection(
        local$transferConnection, (e) => call(transferConnection: e));
  }
}

class _CopyWithStubImpl$Subscription$SubAccountHistory<TRes>
    implements CopyWith$Subscription$SubAccountHistory<TRes> {
  _CopyWithStubImpl$Subscription$SubAccountHistory(this._res);

  TRes _res;

  call(
          {Subscription$SubAccountHistory$transferConnection?
              transferConnection}) =>
      _res;

  CopyWith$Subscription$SubAccountHistory$transferConnection<TRes>
      get transferConnection =>
          CopyWith$Subscription$SubAccountHistory$transferConnection.stub(_res);
}

const documentNodeSubscriptionSubAccountHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'SubAccountHistory'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'address')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'transferConnection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: IntValueNode(value: '1'),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'timestamp'),
                value: EnumValueNode(name: NameNode(value: 'DESC')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: '_or'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'fromId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value: VariableNode(name: NameNode(value: 'address')),
                        )
                      ]),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'toId'),
                      value: ObjectValueNode(fields: [
                        ObjectFieldNode(
                          name: NameNode(value: '_eq'),
                          value: VariableNode(name: NameNode(value: 'address')),
                        )
                      ]),
                    )
                  ]),
                ]),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'timestamp'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  ),
]);
Subscription$SubAccountHistory _parserFn$Subscription$SubAccountHistory(
        Map<String, dynamic> data) =>
    Subscription$SubAccountHistory.fromJson(data);

class Options$Subscription$SubAccountHistory
    extends graphql.SubscriptionOptions<Subscription$SubAccountHistory> {
  Options$Subscription$SubAccountHistory({
    String? operationName,
    required Variables$Subscription$SubAccountHistory variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$SubAccountHistory? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionSubAccountHistory,
          parserFn: _parserFn$Subscription$SubAccountHistory,
        );
}

class WatchOptions$Subscription$SubAccountHistory
    extends graphql.WatchQueryOptions<Subscription$SubAccountHistory> {
  WatchOptions$Subscription$SubAccountHistory({
    String? operationName,
    required Variables$Subscription$SubAccountHistory variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$SubAccountHistory? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionSubAccountHistory,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$SubAccountHistory,
        );
}

class FetchMoreOptions$Subscription$SubAccountHistory
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$SubAccountHistory({
    required graphql.UpdateQuery updateQuery,
    required Variables$Subscription$SubAccountHistory variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeSubscriptionSubAccountHistory,
        );
}

extension ClientExtension$Subscription$SubAccountHistory
    on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$SubAccountHistory>>
      subscribe$SubAccountHistory(
              Options$Subscription$SubAccountHistory options) =>
          this.subscribe(options);
  graphql.ObservableQuery<Subscription$SubAccountHistory>
      watchSubscription$SubAccountHistory(
              WatchOptions$Subscription$SubAccountHistory options) =>
          this.watchQuery(options);
}

class Subscription$SubAccountHistory$transferConnection {
  Subscription$SubAccountHistory$transferConnection({
    required this.edges,
    this.$__typename = 'TransferConnection',
  });

  factory Subscription$SubAccountHistory$transferConnection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Subscription$SubAccountHistory$transferConnection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Subscription$SubAccountHistory$transferConnection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Subscription$SubAccountHistory$transferConnection$edges> edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$SubAccountHistory$transferConnection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$SubAccountHistory$transferConnection
    on Subscription$SubAccountHistory$transferConnection {
  CopyWith$Subscription$SubAccountHistory$transferConnection<
          Subscription$SubAccountHistory$transferConnection>
      get copyWith =>
          CopyWith$Subscription$SubAccountHistory$transferConnection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$SubAccountHistory$transferConnection<
    TRes> {
  factory CopyWith$Subscription$SubAccountHistory$transferConnection(
    Subscription$SubAccountHistory$transferConnection instance,
    TRes Function(Subscription$SubAccountHistory$transferConnection) then,
  ) = _CopyWithImpl$Subscription$SubAccountHistory$transferConnection;

  factory CopyWith$Subscription$SubAccountHistory$transferConnection.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$SubAccountHistory$transferConnection;

  TRes call({
    List<Subscription$SubAccountHistory$transferConnection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Subscription$SubAccountHistory$transferConnection$edges> Function(
              Iterable<
                  CopyWith$Subscription$SubAccountHistory$transferConnection$edges<
                      Subscription$SubAccountHistory$transferConnection$edges>>)
          _fn);
}

class _CopyWithImpl$Subscription$SubAccountHistory$transferConnection<TRes>
    implements
        CopyWith$Subscription$SubAccountHistory$transferConnection<TRes> {
  _CopyWithImpl$Subscription$SubAccountHistory$transferConnection(
    this._instance,
    this._then,
  );

  final Subscription$SubAccountHistory$transferConnection _instance;

  final TRes Function(Subscription$SubAccountHistory$transferConnection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$SubAccountHistory$transferConnection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Subscription$SubAccountHistory$transferConnection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Subscription$SubAccountHistory$transferConnection$edges> Function(
                  Iterable<
                      CopyWith$Subscription$SubAccountHistory$transferConnection$edges<
                          Subscription$SubAccountHistory$transferConnection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Subscription$SubAccountHistory$transferConnection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Subscription$SubAccountHistory$transferConnection<TRes>
    implements
        CopyWith$Subscription$SubAccountHistory$transferConnection<TRes> {
  _CopyWithStubImpl$Subscription$SubAccountHistory$transferConnection(
      this._res);

  TRes _res;

  call({
    List<Subscription$SubAccountHistory$transferConnection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Subscription$SubAccountHistory$transferConnection$edges {
  Subscription$SubAccountHistory$transferConnection$edges({
    required this.node,
    this.$__typename = 'TransferEdge',
  });

  factory Subscription$SubAccountHistory$transferConnection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Subscription$SubAccountHistory$transferConnection$edges(
      node:
          Subscription$SubAccountHistory$transferConnection$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$SubAccountHistory$transferConnection$edges$node node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$SubAccountHistory$transferConnection$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$SubAccountHistory$transferConnection$edges
    on Subscription$SubAccountHistory$transferConnection$edges {
  CopyWith$Subscription$SubAccountHistory$transferConnection$edges<
          Subscription$SubAccountHistory$transferConnection$edges>
      get copyWith =>
          CopyWith$Subscription$SubAccountHistory$transferConnection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$SubAccountHistory$transferConnection$edges<
    TRes> {
  factory CopyWith$Subscription$SubAccountHistory$transferConnection$edges(
    Subscription$SubAccountHistory$transferConnection$edges instance,
    TRes Function(Subscription$SubAccountHistory$transferConnection$edges) then,
  ) = _CopyWithImpl$Subscription$SubAccountHistory$transferConnection$edges;

  factory CopyWith$Subscription$SubAccountHistory$transferConnection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$SubAccountHistory$transferConnection$edges;

  TRes call({
    Subscription$SubAccountHistory$transferConnection$edges$node? node,
    String? $__typename,
  });
  CopyWith$Subscription$SubAccountHistory$transferConnection$edges$node<TRes>
      get node;
}

class _CopyWithImpl$Subscription$SubAccountHistory$transferConnection$edges<
        TRes>
    implements
        CopyWith$Subscription$SubAccountHistory$transferConnection$edges<TRes> {
  _CopyWithImpl$Subscription$SubAccountHistory$transferConnection$edges(
    this._instance,
    this._then,
  );

  final Subscription$SubAccountHistory$transferConnection$edges _instance;

  final TRes Function(Subscription$SubAccountHistory$transferConnection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$SubAccountHistory$transferConnection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node
                as Subscription$SubAccountHistory$transferConnection$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Subscription$SubAccountHistory$transferConnection$edges$node<TRes>
      get node {
    final local$node = _instance.node;
    return CopyWith$Subscription$SubAccountHistory$transferConnection$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Subscription$SubAccountHistory$transferConnection$edges<
        TRes>
    implements
        CopyWith$Subscription$SubAccountHistory$transferConnection$edges<TRes> {
  _CopyWithStubImpl$Subscription$SubAccountHistory$transferConnection$edges(
      this._res);

  TRes _res;

  call({
    Subscription$SubAccountHistory$transferConnection$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Subscription$SubAccountHistory$transferConnection$edges$node<TRes>
      get node =>
          CopyWith$Subscription$SubAccountHistory$transferConnection$edges$node
              .stub(_res);
}

class Subscription$SubAccountHistory$transferConnection$edges$node {
  Subscription$SubAccountHistory$transferConnection$edges$node({
    required this.id,
    required this.timestamp,
    this.$__typename = 'Transfer',
  });

  factory Subscription$SubAccountHistory$transferConnection$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$timestamp = json['timestamp'];
    final l$$__typename = json['__typename'];
    return Subscription$SubAccountHistory$transferConnection$edges$node(
      id: (l$id as String),
      timestamp: DateTime.parse((l$timestamp as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime timestamp;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$timestamp = timestamp;
    _resultData['timestamp'] = l$timestamp.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$timestamp = timestamp;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$timestamp,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Subscription$SubAccountHistory$transferConnection$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$timestamp = timestamp;
    final lOther$timestamp = other.timestamp;
    if (l$timestamp != lOther$timestamp) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$SubAccountHistory$transferConnection$edges$node
    on Subscription$SubAccountHistory$transferConnection$edges$node {
  CopyWith$Subscription$SubAccountHistory$transferConnection$edges$node<
          Subscription$SubAccountHistory$transferConnection$edges$node>
      get copyWith =>
          CopyWith$Subscription$SubAccountHistory$transferConnection$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$SubAccountHistory$transferConnection$edges$node<
    TRes> {
  factory CopyWith$Subscription$SubAccountHistory$transferConnection$edges$node(
    Subscription$SubAccountHistory$transferConnection$edges$node instance,
    TRes Function(Subscription$SubAccountHistory$transferConnection$edges$node)
        then,
  ) = _CopyWithImpl$Subscription$SubAccountHistory$transferConnection$edges$node;

  factory CopyWith$Subscription$SubAccountHistory$transferConnection$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$SubAccountHistory$transferConnection$edges$node;

  TRes call({
    String? id,
    DateTime? timestamp,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$SubAccountHistory$transferConnection$edges$node<
        TRes>
    implements
        CopyWith$Subscription$SubAccountHistory$transferConnection$edges$node<
            TRes> {
  _CopyWithImpl$Subscription$SubAccountHistory$transferConnection$edges$node(
    this._instance,
    this._then,
  );

  final Subscription$SubAccountHistory$transferConnection$edges$node _instance;

  final TRes Function(
      Subscription$SubAccountHistory$transferConnection$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? timestamp = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$SubAccountHistory$transferConnection$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        timestamp: timestamp == _undefined || timestamp == null
            ? _instance.timestamp
            : (timestamp as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$SubAccountHistory$transferConnection$edges$node<
        TRes>
    implements
        CopyWith$Subscription$SubAccountHistory$transferConnection$edges$node<
            TRes> {
  _CopyWithStubImpl$Subscription$SubAccountHistory$transferConnection$edges$node(
      this._res);

  TRes _res;

  call({
    String? id,
    DateTime? timestamp,
    String? $__typename,
  }) =>
      _res;
}
