// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tictactoe_game_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TictactoeGameNotifier)
const tictactoeGameProvider = TictactoeGameNotifierProvider._();

final class TictactoeGameNotifierProvider extends $NotifierProvider<TictactoeGameNotifier, TictactoeGameState> {
  const TictactoeGameNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tictactoeGameProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tictactoeGameNotifierHash();

  @$internal
  @override
  TictactoeGameNotifier create() => TictactoeGameNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TictactoeGameState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TictactoeGameState>(value),
    );
  }
}

String _$tictactoeGameNotifierHash() => r'c17a0bd4869c9c4f41f601508f08e732b17506b5';

abstract class _$TictactoeGameNotifier extends $Notifier<TictactoeGameState> {
  TictactoeGameState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<TictactoeGameState, TictactoeGameState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TictactoeGameState, TictactoeGameState>,
              TictactoeGameState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
