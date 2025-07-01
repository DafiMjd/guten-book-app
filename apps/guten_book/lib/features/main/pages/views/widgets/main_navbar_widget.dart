import 'package:component/theme/index.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class MainNavbarWidget extends StatelessWidget {
  const MainNavbarWidget({
    super.key,
    required this.label,
    required this.inactivePath,
    required this.activePath,
    required this.isActive,
    required this.onTap,
  });

  final String label;
  final String inactivePath;
  final String activePath;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(12.w),
          SvgPicture.asset(
            isActive ? activePath : inactivePath,
            width: 32.w,
            colorFilter: ColorFilter.mode(
              isActive ? GtAppTheme.secondary : GtAppTheme.greyColorShade1,
              BlendMode.srcIn,
            ),
            package: 'component',
          ),
          Gap(6.w),
          Text(
            label,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: isActive
                  ? GtAppTheme.secondary
                  : GtAppTheme.greyColorShade1,
            ),
          ),
        ],
      ),
    );
  }
}
