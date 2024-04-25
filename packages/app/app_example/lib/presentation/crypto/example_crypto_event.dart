part of 'example_crypto_bloc.dart';

@freezed
class ExampleCryptoEvent with _$ExampleCryptoEvent {
  const factory ExampleCryptoEvent.generateAESKey() = _GenerateAESKey;

  const factory ExampleCryptoEvent.encryptAES() = _EncryptAES;

  const factory ExampleCryptoEvent.decryptAES() = _DecryptAES;

  const factory ExampleCryptoEvent.generateRSAKey() = _GenerateRSAKey;

  const factory ExampleCryptoEvent.encryptRSA() = _EncryptRSA;

  const factory ExampleCryptoEvent.decryptRSA() = _DecryptRSA;

  const factory ExampleCryptoEvent.generateRSASignature() =
      _GenerateRSASignature;

  const factory ExampleCryptoEvent.verifyRSASignature() = _VerifyRSASignature;

  const factory ExampleCryptoEvent.generateED25519Key() = _GenerateED25519Key;

  const factory ExampleCryptoEvent.generateED25519Signature() =
      _GenerateED25519Signature;

  const factory ExampleCryptoEvent.verifyED25519Signature() =
      _VerifyED25519Signature;
}
