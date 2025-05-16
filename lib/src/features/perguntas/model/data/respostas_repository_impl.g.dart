// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'respostas_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$respostasRepositoryHash() =>
    r'9d65236212e7f9a9b89fd48798d6f8df67817138';
/**
 * select 
  r.resposta,
  ps.nome,
  ps.apelido,
  r.created_at
from 
  respostas r
inner join perguntas p on 
  p.id = r.pergunta_id
inner join pessoas ps on 
  ps.id = r.pessoa_id
where p.id = 1;
 */
///
/// Copied from [respostasRepository].
@ProviderFor(respostasRepository)
final respostasRepositoryProvider =
    AutoDisposeProvider<RespostasRepository>.internal(
      respostasRepository,
      name: r'respostasRepositoryProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$respostasRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RespostasRepositoryRef = AutoDisposeProviderRef<RespostasRepository>;
String _$respostasHash() => r'ccf7c5cc55ed77176b69330e6f0723b4fc25b5cc';

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
class RespostasFamily extends Family<AsyncValue<List<RespostaDomain>>> {
  /// See also [respostas].
  const RespostasFamily();

  /// See also [respostas].
  RespostasProvider call({required int id}) {
    return RespostasProvider(id: id);
  }

  @override
  RespostasProvider getProviderOverride(covariant RespostasProvider provider) {
    return call(id: provider.id);
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
    extends AutoDisposeFutureProvider<List<RespostaDomain>> {
  /// See also [respostas].
  RespostasProvider({required int id})
    : this._internal(
        (ref) => respostas(ref as RespostasRef, id: id),
        from: respostasProvider,
        name: r'respostasProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$respostasHash,
        dependencies: RespostasFamily._dependencies,
        allTransitiveDependencies: RespostasFamily._allTransitiveDependencies,
        id: id,
      );

  RespostasProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<List<RespostaDomain>> Function(RespostasRef provider) create,
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
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<RespostaDomain>> createElement() {
    return _RespostasProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RespostasProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin RespostasRef on AutoDisposeFutureProviderRef<List<RespostaDomain>> {
  /// The parameter `id` of this provider.
  int get id;
}

class _RespostasProviderElement
    extends AutoDisposeFutureProviderElement<List<RespostaDomain>>
    with RespostasRef {
  _RespostasProviderElement(super.provider);

  @override
  int get id => (origin as RespostasProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
