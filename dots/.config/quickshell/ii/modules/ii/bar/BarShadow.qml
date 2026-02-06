import QtQuick
import QtQuick.Effects
import qs.modules.common
import qs.modules.common.functions

RectangularShadow {
    required property Item target
    readonly property real targetRadius: (target && target.radius !== undefined && target.radius !== null)
        ? target.radius
        : 0

    anchors.fill: target
    radius: targetRadius
    blur: (BarStyle.shadowBlurFactor || 0) * (Appearance?.sizes?.elevationMargin || 0)
    offset: Qt.vector2d(0.0, 1.0)
    spread: 0
    color: ColorUtils.transparentize(BarStyle.shadowBaseColor, BarStyle.shadowTransparentize)
    cached: true
}
