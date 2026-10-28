class PayNowSettings {
  final String integrationId;
  final String integrationKey;
  final bool isEnabled;
  final bool isSandboxEnabled;

  PayNowSettings({
    required this.integrationId,
    required this.integrationKey,
    required this.isEnabled,
    required this.isSandboxEnabled,
  });

  factory PayNowSettings.fromJson(Map<String, dynamic> json) {
    return PayNowSettings(
      integrationId: json['integration_id'] ?? '',
      integrationKey: json['integration_key'] ?? '',
      isEnabled: json['isEnabled'] ?? false,
      isSandboxEnabled: json['isSandboxEnabled'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'integration_id': integrationId,
      'integration_key': integrationKey,
      'isEnabled': isEnabled,
      'isSandboxEnabled': isSandboxEnabled,
    };
  }
}
