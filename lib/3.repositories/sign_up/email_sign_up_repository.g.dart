// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_sign_up_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$emailSignUpRepositoryHash() =>
    r'f3896e1532b77f843bb243f353490c380d438a02';

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

/// See also [emailSignUpRepository].
@ProviderFor(emailSignUpRepository)
const emailSignUpRepositoryProvider = EmailSignUpRepositoryFamily();

/// See also [emailSignUpRepository].
class EmailSignUpRepositoryFamily extends Family<AsyncValue<ResponseEntity>> {
  /// See also [emailSignUpRepository].
  const EmailSignUpRepositoryFamily();

  /// See also [emailSignUpRepository].
  EmailSignUpRepositoryProvider call(
    SignUpRequest request,
  ) {
    return EmailSignUpRepositoryProvider(
      request,
    );
  }

  @override
  EmailSignUpRepositoryProvider getProviderOverride(
    covariant EmailSignUpRepositoryProvider provider,
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
  String? get name => r'emailSignUpRepositoryProvider';
}

/// See also [emailSignUpRepository].
class EmailSignUpRepositoryProvider
    extends AutoDisposeFutureProvider<ResponseEntity> {
  /// See also [emailSignUpRepository].
  EmailSignUpRepositoryProvider(
    SignUpRequest request,
  ) : this._internal(
          (ref) => emailSignUpRepository(
            ref as EmailSignUpRepositoryRef,
            request,
          ),
          from: emailSignUpRepositoryProvider,
          name: r'emailSignUpRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$emailSignUpRepositoryHash,
          dependencies: EmailSignUpRepositoryFamily._dependencies,
          allTransitiveDependencies:
              EmailSignUpRepositoryFamily._allTransitiveDependencies,
          request: request,
        );

  EmailSignUpRepositoryProvider._internal(
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
    FutureOr<ResponseEntity> Function(EmailSignUpRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EmailSignUpRepositoryProvider._internal(
        (ref) => create(ref as EmailSignUpRepositoryRef),
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
  AutoDisposeFutureProviderElement<ResponseEntity> createElement() {
    return _EmailSignUpRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EmailSignUpRepositoryProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EmailSignUpRepositoryRef on AutoDisposeFutureProviderRef<ResponseEntity> {
  /// The parameter `request` of this provider.
  SignUpRequest get request;
}

class _EmailSignUpRepositoryProviderElement
    extends AutoDisposeFutureProviderElement<ResponseEntity>
    with EmailSignUpRepositoryRef {
  _EmailSignUpRepositoryProviderElement(super.provider);

  @override
  SignUpRequest get request =>
      (origin as EmailSignUpRepositoryProvider).request;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
