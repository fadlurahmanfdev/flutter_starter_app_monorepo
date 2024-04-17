part of 'example_crypto_bloc.dart';

@freezed
class ExampleCryptoEvent with _$ExampleCryptoEvent {
  const factory ExampleCryptoEvent.generateAESKey() = _GenerateAESKey;
  const factory ExampleCryptoEvent.encryptAES() = _EncryptAES;
  const factory ExampleCryptoEvent.decryptAES() = _DecryptAES;
}
