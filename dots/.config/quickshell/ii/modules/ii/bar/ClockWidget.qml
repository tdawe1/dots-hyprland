import qs.modules.common
import qs.modules.common.widgets
import qs.modules.common.functions
import qs.modules.ii.bar
import qs.services
import QtQuick
import QtQuick.Layouts

Item {
    id: root
    property bool borderless: Config.options.bar.borderless
    property bool showDate: Config.options.bar.verbose
    implicitWidth: rowLayout.implicitWidth
    implicitHeight: Appearance.sizes.barHeight

    BarPillBackground { contentItem: rowLayout }

    RowLayout {
        id: rowLayout
        anchors.centerIn: parent
        spacing: 4 * Appearance.uiScale

        BarText {
            font.pixelSize: Appearance.font.pixelSize.larger
            color: BarStyle.isLight
                ? ColorUtils.mix(Appearance.colors.colOnLayer1, BarStyle.accentPink, 0.75)
                : Appearance.colors.colOnLayer1
            text: DateTime.time
        }

        BarText {
            visible: root.showDate
            font.pixelSize: Appearance.font.pixelSize.normal
            color: BarStyle.isLight
                ? ColorUtils.mix(Appearance.colors.colOnLayer1, BarStyle.accentPink, 0.75)
                : Appearance.colors.colOnLayer1
            text: "•"
        }

        BarText {
            visible: root.showDate
            font.pixelSize: Appearance.font.pixelSize.normal
            color: BarStyle.isLight
                ? ColorUtils.mix(Appearance.colors.colOnLayer1, BarStyle.accentPink, 0.75)
                : Appearance.colors.colOnLayer1
            text: DateTime.longDate
        }
    }

    BarBloom {
        target: rowLayout
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: !Config.options.bar.tooltips.clickToShow

        ClockWidgetPopup {
            hoverTarget: mouseArea
        }
    }
}
