part of 'settings_screen.dart';

class DirectionSettings extends StatelessWidget {
  const DirectionSettings({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsGroup(
      header: SettingsGroupHeader('Directions'),
      items: [
        _buildWalkSpeedItem(),
        _buildAccessibilityItem(),
      ],
      footer: SettingsGroupFooter(
          'These settings may not affect all transport networks.'),
    );
  }

  Widget _buildWalkSpeedItem() {
    return SettingsItem(
      label: 'Walk Speed',
      subtitle: 'How fast can you walk?',
      icon: SettingsIcon(
        backgroundColor: CupertinoColors.activeBlue,
        icon: Ionicons.ios_walk,
      ),
      onPress: () {},
    );
  }

  Widget _buildAccessibilityItem() {
    return SettingsItem(
      label: 'Accessibility',
      subtitle: 'How accessible do you need the route to be?',
      icon: SettingsIcon(
        backgroundColor: CupertinoColors.activeBlue,
        icon: Ionicons.ios_man,
      ),
      onPress: () {},
    );
  }
}
