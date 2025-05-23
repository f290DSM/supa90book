// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'respostas_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$respostasHash() => r'5d19c487609abffc133d04e33495200f581c9eb6';

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

/// See also [respostas].
@ProviderFor(respostas)
const respostasProvider = RespostasFamily();

/// See also [respostas].
class RespostasFamily extends Family<AsyncValue<List<RespostaPerguntaDomain>>> {
  /// See also [respostas].
  const RespostasFamily();

  /// See also [respostas].
  RespostasProvider call({required int idPergunta}) {
    return RespostasProvider(idPergunta: idPergunta);
  }

  @override
  RespostasProvider getProviderOverride(covariant RespostasProvider provider) {
    return call(idPergunta: provider.idPergunta);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'respostasProvider';
}

/// See also [respostas].
class RespostasProvider
    extends AutoDisposeFutureProvider<List<RespostaPerguntaDomain>> {
  /// See also [respostas].
  RespostasProvider({required int idPergunta})
    : this._internal(
        (ref) => respostas(ref as RespostasRef, idPergunta: idPergunta),
        from: respostasProvider,
        name: r'respostasProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$respostasHash,
        dependencies: RespostasFamily._dependencies,
        allTransitiveDependencies: RespostasFamily._allTransitiveDependencies,
        idPergunta: idPergunta,
      );

  RespostasProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.idPergunta,
  }) : super.internal();

  final int idPergunta;

  @override
  Override overrideWith(
    FutureOr<List<RespostaPerguntaDomain>> Function(RespostasRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RespostasProvider._internal(
        (ref) => create(ref as RespostasRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        idPergunta: idPergunta,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<RespostaPerguntaDomain>>
  createElement() {
    return _RespostasProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RespostasProvider && other.idPergunta == idPergunta;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, idPergunta.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RespostasRef
    on AutoDisposeFutureProviderRef<List<RespostaPerguntaDomain>> {
  /// The parameter `idPergunta` of this provider.
  int get idPergunta;
}

class _RespostasProviderElement
    extends AutoDisposeFutureProviderElement<List<RespostaPerguntaDomain>>
    with RespostasRef {
  _RespostasProviderElement(super.provider);

  @override
  int get idPergunta => (origin as RespostasProvider).idPergunta;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
