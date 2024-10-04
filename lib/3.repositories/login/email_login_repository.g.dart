// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_login_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginTokenRepoHash() => r'9c487c7d363bb775590e65c95a3e43f581d55606';

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

/// See also [loginTokenRepo].
@ProviderFor(loginTokenRepo)
const loginTokenRepoProvider = LoginTokenRepoFamily();

/// See also [loginTokenRepo].
class LoginTokenRepoFamily
    extends Family<AsyncValue<ResponseEntity<TokenResponseModel>>> {
  /// See also [loginTokenRepo].
  const LoginTokenRepoFamily();

  /// See also [loginTokenRepo].
  LoginTokenRepoProvider call(
    SignUpRequest request,
  ) {
    return LoginTokenRepoProvider(
      request,
    );
  }

  @override
  LoginTokenRepoProvider getProviderOverride(
    covariant LoginTokenRepoProvider provider,
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
  String? get name => r'loginTokenRepoProvider';
}

/// See also [loginTokenRepo].
class LoginTokenRepoProvider
    extends AutoDisposeFutureProvider<ResponseEntity<TokenResponseModel>> {
  /// See also [loginTokenRepo].
  LoginTokenRepoProvider(
    SignUpRequest request,
  ) : this._internal(
          (ref) => loginTokenRepo(
            ref as LoginTokenRepoRef,
            request,
          ),
          from: loginTokenRepoProvider,
          name: r'loginTokenRepoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginTokenRepoHash,
          dependencies: LoginTokenRepoFamily._dependencies,
          allTransitiveDependencies:
              LoginTokenRepoFamily._allTransitiveDependencies,
          request: request,
        );

  LoginTokenRepoProvider._internal(
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
    FutureOr<ResponseEntity<TokenResponseModel>> Function(
            LoginTokenRepoRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LoginTokenRepoProvider._internal(
        (ref) => create(ref as LoginTokenRepoRef),
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
  AutoDisposeFutureProviderElement<ResponseEntity<TokenResponseModel>>
      createElement() {
    return _LoginTokenRepoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginTokenRepoProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LoginTokenRepoRef
    on AutoDisposeFutureProviderRef<ResponseEntity<TokenResponseModel>> {
  /// The parameter `request` of this provider.
  SignUpRequest get request;
}

class _LoginTokenRepoProviderElement
    extends AutoDisposeFutureProviderElement<ResponseEntity<TokenResponseModel>>
    with LoginTokenRepoRef {
  _LoginTokenRepoProviderElement(super.provider);

  @override
  SignUpRequest get request => (origin as LoginTokenRepoProvider).request;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
