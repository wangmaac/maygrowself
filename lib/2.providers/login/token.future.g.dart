// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.future.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tokenHash() => r'725f1903062a95a1693a23b76cab754ff08882e7';

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

/// See also [token].
@ProviderFor(token)
const tokenProvider = TokenFamily();

/// See also [token].
class TokenFamily extends Family<AsyncValue<void>> {
  /// See also [token].
  const TokenFamily();

  /// See also [token].
  TokenProvider call(
    SignUpRequest request,
  ) {
    return TokenProvider(
      request,
    );
  }

  @override
  TokenProvider getProviderOverride(
    covariant TokenProvider provider,
  ) {
    return call(
      provider.request,
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
  String? get name => r'tokenProvider';
}

/// See also [token].
class TokenProvider extends AutoDisposeFutureProvider<void> {
  /// See also [token].
  TokenProvider(
    SignUpRequest request,
  ) : this._internal(
          (ref) => token(
            ref as TokenRef,
            request,
          ),
          from: tokenProvider,
          name: r'tokenProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$tokenHash,
          dependencies: TokenFamily._dependencies,
          allTransitiveDependencies: TokenFamily._allTransitiveDependencies,
          request: request,
        );

  TokenProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final SignUpRequest request;

  @override
  Override overrideWith(
    FutureOr<void> Function(TokenRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TokenProvider._internal(
        (ref) => create(ref as TokenRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _TokenProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TokenProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TokenRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `request` of this provider.
  SignUpRequest get request;
}

class _TokenProviderElement extends AutoDisposeFutureProviderElement<void>
    with TokenRef {
  _TokenProviderElement(super.provider);

  @override
  SignUpRequest get request => (origin as TokenProvider).request;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
