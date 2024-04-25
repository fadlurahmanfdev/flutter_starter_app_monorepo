part of 'example_crypto_bloc.dart';

@freezed
class ExampleCryptoState with _$ExampleCryptoState {
  const factory ExampleCryptoState({
    String? aesIVKey,
    String? aesKey,
    String? encryptedAES,
    CryptoKey? rsaKey,
    String? encryptedRSA,
    String? signatureRSA,
    CryptoKey? ed25519Key,
    String? signatureED25519,
  }) = _ExampleCryptoState;

  factory ExampleCryptoState.initialize() => const ExampleCryptoState();
}
