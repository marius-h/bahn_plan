part of 'settings_screen.dart';

class CommonSettings extends StatefulWidget {
  const CommonSettings({
    Key key,
  }) : super(key: key);

  @override
  _CommonSettingsState createState() => _CommonSettingsState();
}

class _CommonSettingsState extends State<CommonSettings> {
  @override
  Widget build(BuildContext context) {
    return SettingsGroup(
      header: SettingsGroupHeader('General'),
      items: [
        _buildTransportNetworkItem(),
        _buildShowChangesItem(),
        _buildLocationItem(),
      ],
    );
  }

  Widget _buildTransportNetworkItem() {
    return SettingsItem(
      label: 'Transport Network',
      subtitle: 'Pick transportation network.',
      icon: SettingsIcon(
        backgroundColor: CupertinoColors.activeGreen,
        icon: Ionicons.ios_git_network,
      ),
      onPress: () {
        //AppRouter.of(context).navigateTo(context, Routes.routes);
      },
    );
  }

  bool showChanges = false;

  Widget _buildShowChangesItem() {
    return SettingsItem(
      label: 'Show changes',
      subtitle: 'Show changelog after each upgrade.',
      icon: SettingsIcon(
        backgroundColor: CupertinoColors.activeBlue,
        icon: Ionicons.ios_list,
      ),
      content: PlatformSwitch(
        onChanged: (bool value) {
          setState(() {
            showChanges = value;
          });
        },
        value: showChanges,
      ),
    );
  }

  Widget _buildLocationItem() {
    return SettingsItem(
      label: 'Location Settings',
      subtitle: 'Enable location providers, e.g. GPS.',
      icon: SettingsIcon(
        backgroundColor: CupertinoColors.activeBlue,
        icon: Ionicons.ios_pin,
      ),
      onPress: () {},
    );
  }
}
