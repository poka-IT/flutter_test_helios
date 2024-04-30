// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountHistoryHash() => r'fa9dc04fe018cd728d022051912c5f55ca54098c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$AccountHistory extends BuildlessAutoDisposeAsyncNotifier<
    List<Query$GetAccountHistory$transferConnection$edges$node>> {
  late final String address;

  FutureOr<List<Query$GetAccountHistory$transferConnection$edges$node>> build(
    String address,
  );
}

/// See also [AccountHistory].
@ProviderFor(AccountHistory)
const accountHistoryProvider = AccountHistoryFamily();

/// See also [AccountHistory].
class AccountHistoryFamily extends Family<
    AsyncValue<List<Query$GetAccountHistory$transferConnection$edges$node>>> {
  /// See also [AccountHistory].
  const AccountHistoryFamily();

  /// See also [AccountHistory].
  AccountHistoryProvider call(
    String address,
  ) {
    return AccountHistoryProvider(
      address,
    );
  }

  @override
  AccountHistoryProvider getProviderOverride(
    covariant AccountHistoryProvider provider,
  ) {
    return call(
      provider.address,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'accountHistoryProvider';
}

/// See also [AccountHistory].
class AccountHistoryProvider extends AutoDisposeAsyncNotifierProviderImpl<
    AccountHistory,
    List<Query$GetAccountHistory$transferConnection$edges$node>> {
  /// See also [AccountHistory].
  AccountHistoryProvider(
    String address,
  ) : this._internal(
          () => AccountHistory()..address = address,
          from: accountHistoryProvider,
          name: r'accountHistoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$accountHistoryHash,
          dependencies: AccountHistoryFamily._dependencies,
          allTransitiveDependencies:
              AccountHistoryFamily._allTransitiveDependencies,
          address: address,
        );

  AccountHistoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.address,
  }) : super.internal();

  final String address;

  @override
  FutureOr<List<Query$GetAccountHistory$transferConnection$edges$node>>
      runNotifierBuild(
    covariant AccountHistory notifier,
  ) {
    return notifier.build(
      address,
    );
  }

  @override
  Override overrideWith(AccountHistory Function() create) {
    return ProviderOverride(
      origin: this,
      override: AccountHistoryProvider._internal(
        () => create()..address = address,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        address: address,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AccountHistory,
          List<Query$GetAccountHistory$transferConnection$edges$node>>
      createElement() {
    return _AccountHistoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountHistoryProvider && other.address == address;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, address.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AccountHistoryRef on AutoDisposeAsyncNotifierProviderRef<
    List<Query$GetAccountHistory$transferConnection$edges$node>> {
  /// The parameter `address` of this provider.
  String get address;
}

class _AccountHistoryProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AccountHistory,
        List<Query$GetAccountHistory$transferConnection$edges$node>>
    with AccountHistoryRef {
  _AccountHistoryProviderElement(super.provider);

  @override
  String get address => (origin as AccountHistoryProvider).address;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
