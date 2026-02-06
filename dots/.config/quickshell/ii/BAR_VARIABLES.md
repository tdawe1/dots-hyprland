# Bar Variables (Code Locations)

This file lists the **code-level QML properties/constants** controlling each bar section.

## Global Bar Size/Placement
- `Appearance.sizes.baseBarHeight` in `modules/common/Appearance.qml`
- `Appearance.sizes.barHeight` in `modules/common/Appearance.qml`
- `Appearance.sizes.hyprlandGapsOut` in `modules/common/Appearance.qml`
- `Appearance.rounding.screenRounding` in `modules/common/Appearance.qml`
- `Appearance.sizes.barCenterSideModuleWidth` in `modules/common/Appearance.qml`
- `Appearance.sizes.barCenterSideModuleWidthShortened` in `modules/common/Appearance.qml`
- `Appearance.sizes.barCenterSideModuleWidthHellaShortened` in `modules/common/Appearance.qml`
- `Appearance.sizes.barShortenScreenWidthThreshold` in `modules/common/Appearance.qml`
- `Appearance.sizes.barHellaShortenScreenWidthThreshold` in `modules/common/Appearance.qml`
- `Bar.qml` layout behaviors: `showBarBackground`, `exclusiveZone`, anchors/margins in `modules/ii/bar/Bar.qml`

## Bar Background + Border
- `BarStyle.barBackground` in `modules/ii/bar/BarStyle.qml`
- `BarStyle.barBorder` in `modules/ii/bar/BarStyle.qml`
- `BarStyle.innerShadeEdge` / `BarStyle.innerShadeMid` in `modules/ii/bar/BarStyle.qml`
- `barBackground.radius`, `barBackground.border.width`, `barBackground.border.color` in `modules/ii/bar/BarContent.qml`
- `barBackground.anchors.margins` in `modules/ii/bar/BarContent.qml`

## Shadows/Bloom
- `BarStyle.shadowBaseColor`, `shadowTransparentize`, `shadowBlurFactor` in `modules/ii/bar/BarStyle.qml`
- `BarShadow.blur` (uses `Appearance.sizes.elevationMargin`) in `modules/ii/bar/BarShadow.qml`
- `BarStyle.bloomOuter`, `BarStyle.bloomBlurFactor` in `modules/ii/bar/BarStyle.qml`
- Bloom stages (`DropShadow.radius`/`color`) in `modules/ii/bar/BarBloom.qml`

## Text Weight + Font Sizes
- `BarStyle.textWeightLight` in `modules/ii/bar/BarStyle.qml`
- `BarText.font.variableAxes` and `font.weight` in `modules/ii/bar/BarText.qml`
- `Appearance.font.pixelSize.*` in `modules/common/Appearance.qml`

## Left Section (Sidebar Button + Active Window)
- `leftSectionRowLayout.spacing` in `modules/ii/bar/BarContent.qml`
- `LeftSidebarButton.Layout.leftMargin` in `modules/ii/bar/BarContent.qml`
- `ActiveWindow.Layout.leftMargin` / `Layout.rightMargin` in `modules/ii/bar/BarContent.qml`
- `ActiveWindow.colLayout.spacing` and `BarText.font.pixelSize.*` in `modules/ii/bar/ActiveWindow.qml`

## Middle Section (Resources + Media + Workspaces)
- `middleSection.spacing` in `modules/ii/bar/BarContent.qml`

### Resources
- `Resources.rowLayout.spacing` in `modules/ii/bar/Resources.qml`
- `Resources.rowLayout.anchors.leftMargin/rightMargin` in `modules/ii/bar/Resources.qml`
- `Resource` `Layout.leftMargin` for swap/cpu in `modules/ii/bar/Resources.qml`

### Media
- `Media.rowLayout.spacing` in `modules/ii/bar/Media.qml`
- `mediaCircProg.implicitSize` in `modules/ii/bar/Media.qml`
- `mediaCircProg.lineWidth` in `modules/ii/bar/Media.qml`

### Workspaces
- `workspaceButtonWidth` in `modules/ii/bar/Workspaces.qml`
- `workspaceHighlightPadding` in `modules/ii/bar/Workspaces.qml`
- `workspaceCellWidth` in `modules/ii/bar/Workspaces.qml`
- `activeWorkspaceMargin` in `modules/ii/bar/Workspaces.qml`
- `workspaceIconSize`, `workspaceIconSizeShrinked` in `modules/ii/bar/Workspaces.qml`
- `workspaceIconOpacityShrinked` in `modules/ii/bar/Workspaces.qml`
- `workspaceIconMarginShrinked` in `modules/ii/bar/Workspaces.qml`
- Workspace background color `Rectangle.color` in `modules/ii/bar/Workspaces.qml`

## Right Center Group (Clock + Utilities + Battery)

### Clock
- `ClockWidget.rowLayout.spacing` in `modules/ii/bar/ClockWidget.qml`
- `ClockWidget` text sizes in `modules/ii/bar/ClockWidget.qml`

### Utilities
- `UtilButtons.utilIconSize` in `modules/ii/bar/UtilButtons.qml`
- `UtilButtons.rowLayout.spacing` in `modules/ii/bar/UtilButtons.qml`

### Battery
- `batteryProgress` sizing in `modules/ii/bar/BatteryIndicator.qml`
- Bolt icon sizes/margins in `modules/ii/bar/BatteryIndicator.qml`

## Right Section (Indicators + Tray + Weather)
- `rightSectionRowLayout.spacing` in `modules/ii/bar/BarContent.qml`
- `indicatorsRowLayout.realSpacing` in `modules/ii/bar/BarContent.qml`

### SysTray
- `SysTray.gridLayout.rowSpacing/columnSpacing` in `modules/ii/bar/SysTray.qml`

### Weather
- `WeatherBar.implicitWidth` in `modules/ii/bar/weather/WeatherBar.qml`
- `WeatherBar.rowLayout.spacing` in `modules/ii/bar/weather/WeatherBar.qml`
- Weather loader margin `weatherLoader.Layout.leftMargin` in `modules/ii/bar/BarContent.qml`

## Grouping/Pill Backgrounds (if re-enabled)
- `BarPillBackground.insetX`, `insetY`, `pillWidth`, `pillHeight`, `radius` in `modules/ii/bar/BarPillBackground.qml`
- `BarPillBackground.pillCenter`, `pillEdge` in `modules/ii/bar/BarPillBackground.qml`
- `BarPillBackground.visible` in `modules/ii/bar/BarPillBackground.qml`
- `BarGroup.padding`, `columnSpacing`, `rowSpacing`, background margins in `modules/ii/bar/BarGroup.qml`
