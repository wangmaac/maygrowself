// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_duplication_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$emailDuplicationRepositoryHash() =>
    r'5d291266155e78dab040f5cc6708124e986ca241';

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

/// See also [emailDuplicationRepository].
@ProviderFor(emailDuplicationRepository)
const emailDuplicationRepositoryProvider = EmailDuplicationRepositoryFamily();

/// See also [emailDuplicationRepository].
class EmailDuplicationRepositoryFamily
    extends Family<AsyncValue<ResponseEntity>> {
  /// See also [emailDuplicationRepository].
  const EmailDuplicationRepositoryFamily();

  /// See also [emailDuplicationRepository].
  EmailDuplicationRepositoryProvider call(
    String email,
  ) {
    return EmailDuplicationRepositoryProvider(
      email,
    );
  }

  @override
  EmailDuplicationRepositoryProvider getProviderOverride(
    covariant EmailDuplicationRepositoryProvider provider,
  ) {
    return call(
      provider.email,
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
  String? get name => r'emailDuplicationRepositoryProvider';
}

/// See also [emailDuplicationRepository].
class EmailDuplicationRepositoryProvider
    extends AutoDisposeFutureProvider<ResponseEntity> {
  /// See also [emailDuplicationRepository].
  EmailDuplicationRepositoryProvider(
    String email,
  ) : this._internal(
          (ref) => emailDuplicationRepository(
            ref as EmailDuplicationRepositoryRef,
            email,
          ),
          from: emailDuplicationRepositoryProvider,
          name: r'emailDuplicationRepositoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$emailDuplicationRepositoryHash,
          dependencies: EmailDuplicationRepositoryFamily._dependencies,
          allTransitiveDependencies:
              EmailDuplicationRepositoryFamily._allTransitiveDependencies,
          email: email,
        );

  EmailDuplicationRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.email,
  }) : super.internal();

  final String email;

  @override
  Override overrideWith(
    FutureOr<ResponseEntity> Function(EmailDuplicationRepositoryRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EmailDuplicationRepositoryProvider._internal(
        (ref) => create(ref as EmailDuplicationRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        email: email,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ResponseEntity> createElement() {
    return _EmailDuplicationRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EmailDuplicationRepositoryProvider && other.email == email;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EmailDuplicationRepositoryRef
    on AutoDisposeFutureProviderRef<ResponseEntity> {
  /// The parameter `email` of this provider.
  String get email;
}

class _EmailDuplicationRepositoryProviderElement
    extends AutoDisposeFutureProviderElement<ResponseEntity>
    with EmailDuplicationRepositoryRef {
  _EmailDuplicationRepositoryProviderElement(super.provider);

  @override
  String get email => (origin as EmailDuplicationRepositoryProvider).email;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
