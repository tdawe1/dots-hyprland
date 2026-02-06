import QtQuick
import qs.modules.common
import qs.modules.ii.bar

Item {
    id: root
    // Size-aware padding so pills scale with section height
    property Item contentItem: null
    readonly property Item widthRef: parent
    readonly property Item heightRef: parent
    readonly property real fallbackWidth: widthRef
        ? ((widthRef.width ?? 0) > 0 ? widthRef.width : (widthRef.implicitWidth ?? 0))
        : 0
    readonly property real contentWidth: (contentItem && contentItem.childrenRect.width > 0)
        ? contentItem.childrenRect.width
        : fallbackWidth
    readonly property real contentX: (contentItem && contentItem.childrenRect.width > 0)
        ? (contentItem.x + contentItem.childrenRect.x)
        : 0
    readonly property real refHeight: heightRef
        ? ((heightRef.height ?? 0) > 0 ? heightRef.height : (heightRef.implicitHeight ?? 0))
        : 0
    property real insetY: Math.round(Math.max(2 * Appearance.uiScale, refHeight * 0.12))
    property real insetX: Math.round(Math.max(2 * Appearance.uiScale, refHeight * 0.05))
    readonly property real pillWidth: Math.max(0, contentWidth - (insetX * 2))
    readonly property real pillHeight: Math.max(0, refHeight - (insetY * 2))
    property real radius: Appearance.rounding.small
    property color pillCenter: BarStyle.pillBackground
    property color pillEdge: BarStyle.barBackground

    anchors.fill: parent
    visible: false
    z: -1

    Rectangle {
        id: bg
        x: root.contentX + root.insetX
        y: Math.round((parent.height - height) / 2)
        width: root.pillWidth
        height: root.pillHeight
        radius: Math.min(root.radius, height / 2)
        gradient: Gradient {
            GradientStop { position: 0.0; color: root.pillEdge }
            GradientStop { position: 0.4; color: root.pillCenter }
            GradientStop { position: 0.6; color: root.pillCenter }
            GradientStop { position: 1.0; color: root.pillEdge }
        }
        border.width: 0
        border.color: "transparent"
    }

    BarShadow {
        target: bg
        visible: BarStyle.isLight
        z: -1
    }
}
