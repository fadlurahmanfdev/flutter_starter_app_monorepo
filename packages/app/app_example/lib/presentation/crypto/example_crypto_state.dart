part of 'example_crypto_bloc.dart';

@freezed
class ExampleCryptoState with _$ExampleCryptoState {
  const factory ExampleCryptoState({
    String? aesIVKey,
    String? aesKey,
    String? encryptedAES,
  }) = _ExampleCryptoState;

  factory ExampleCryptoState.initialize() => const ExampleCryptoState();
}
