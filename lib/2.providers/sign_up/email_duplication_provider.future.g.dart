// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_duplication_provider.future.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$emailDuplicationHash() => r'485bbdd014292022366ad03714666ec7fa2b39af';

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

/// See also [emailDuplication].
@ProviderFor(emailDuplication)
const emailDuplicationProvider = EmailDuplicationFamily();

/// See also [emailDuplication].
class EmailDuplicationFamily extends Family<AsyncValue<EmailDuplicationModel>> {
  /// See also [emailDuplication].
  const EmailDuplicationFamily();

  /// See also [emailDuplication].
  EmailDuplicationProvider call(
    String email,
  ) {
    return EmailDuplicationProvider(
      email,
    );
  }

  @override
  EmailDuplicationProvider getProviderOverride(
    covariant EmailDuplicationProvider provider,
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
  String? get name => r'emailDuplicationProvider';
}

/// See also [emailDuplication].
class EmailDuplicationProvider
    extends AutoDisposeFutureProvider<EmailDuplicationModel> {
  /// See also [emailDuplication].
  EmailDuplicationProvider(
    String email,
  ) : this._internal(
          (ref) => emailDuplication(
            ref as EmailDuplicationRef,
            email,
          ),
          from: emailDuplicationProvider,
          name: r'emailDuplicationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$emailDuplicationHash,
          dependencies: EmailDuplicationFamily._dependencies,
          allTransitiveDependencies:
              EmailDuplicationFamily._allTransitiveDependencies,
          email: email,
        );

  EmailDuplicationProvider._internal(
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
    FutureOr<EmailDuplicationModel> Function(EmailDuplicationRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EmailDuplicationProvider._internal(
        (ref) => create(ref as EmailDuplicationRef),
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
  AutoDisposeFutureProviderElement<EmailDuplicationModel> createElement() {
    return _EmailDuplicationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EmailDuplicationProvider && other.email == email;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, email.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EmailDuplicationRef
    on AutoDisposeFutureProviderRef<EmailDuplicationModel> {
  /// The parameter `email` of this provider.
  String get email;
}

class _EmailDuplicationProviderElement
    extends AutoDisposeFutureProviderElement<EmailDuplicationModel>
    with EmailDuplicationRef {
  _EmailDuplicationProviderElement(super.provider);

  @override
  String get email => (origin as EmailDuplicationProvider).email;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
