import QtQuick
import Qt5Compat.GraphicalEffects
import qs.modules.common
import qs.modules.common.functions
import qs.modules.ii.bar

Item {
    id: root
    required property Item target
    property real baseRadius: Appearance.sizes.elevationMargin * BarStyle.bloomBlurFactor

    anchors.fill: target
    visible: !!target && target.visible && Config.options.bar.showBackground && BarStyle.isLight
    z: -1

    DropShadow {
        anchors.fill: parent
        source: target
        radius: root.baseRadius * 0.5
        samples: Math.round(radius * 2 + 1)
        horizontalOffset: 0
        verticalOffset: 0
        color: ColorUtils.transparentize(BarStyle.bloomOuter, -0.1)
        transparentBorder: true
        cached: true
    }

    DropShadow {
        anchors.fill: parent
        source: target
        radius: root.baseRadius * 1.0
        samples: Math.round(radius * 2 + 1)
        horizontalOffset: 0
        verticalOffset: 0
        color: ColorUtils.transparentize(BarStyle.bloomOuter, 0.25)
        transparentBorder: true
        cached: true
    }

    DropShadow {
        anchors.fill: parent
        source: target
        radius: root.baseRadius * 1.8
        samples: Math.round(radius * 2 + 1)
        horizontalOffset: 0
        verticalOffset: 0
        color: ColorUtils.transparentize(BarStyle.bloomOuter, 0.55)
        transparentBorder: true
        cached: true
    }

    DropShadow {
        anchors.fill: parent
        source: target
        radius: root.baseRadius * 2.6
        samples: Math.round(radius * 2 + 1)
        horizontalOffset: 0
        verticalOffset: 0
        color: ColorUtils.transparentize(BarStyle.bloomOuter, 0.7)
        transparentBorder: true
        cached: true
    }
}
