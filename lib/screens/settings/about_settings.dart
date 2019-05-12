part of 'settings_screen.dart';

class AboutSettings extends StatelessWidget {
  const AboutSettings({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsGroup(
      header: SettingsGroupHeader('About'),
      items: [
        _buildPrivacyItem(),
        _buildAccessibilityItem(context),
      ],
      footer: SettingsGroupFooter(
          'These settings may not affect all transport networks.'),
    );
  }

  Widget _buildPrivacyItem() {
    return SettingsItem(
      label: 'Privacy',
      icon: SettingsIcon(
        backgroundColor: CupertinoColors.activeBlue,
        icon: Ionicons.ios_hand,
      ),
      onPress: () {},
    );
  }

  Widget _buildAccessibilityItem(BuildContext context) {
    return SettingsItem(
      label: 'Licenses',
      icon: SettingsIcon(
        backgroundColor: CupertinoColors.activeBlue,
        icon: Ionicons.ios_man,
      ),
    );
  }
}
