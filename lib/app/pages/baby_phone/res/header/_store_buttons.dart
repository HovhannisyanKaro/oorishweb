part of 'baby_phone_header_view.dart';

class _StoreButtons extends StatelessWidget {
  final bool isLauncherIconEnable;

  const _StoreButtons({this.isLauncherIconEnable = false});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.end,
      crossAxisAlignment: WrapCrossAlignment.end,
      children: [
        if (isLauncherIconEnable) ...[
          const _LauncherIcon(),
          const SizedBox(width: 16),
        ],
        InkWell(onTap: () => launchOorishAooStore(context), child: OorishConstraintLayout(maxWidth: 180, maxHeight: 50, child: AppIcons.imageAppStore.imageAsset(width: 180, height: 50))),
        InkWell(onTap: () => launchOorishGooglePlayStore(context), child: OorishConstraintLayout(maxWidth: 180, maxHeight: 50, child: AppIcons.imageGoogleStore.imageAsset(width: 180, height: 50))),
      ],
    );
  }
}
