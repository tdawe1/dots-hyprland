pragma ComponentBehavior: Bound

import qs.modules.common
import qs.modules.common.widgets
import qs.services
import qs.modules.ii.bar
import Quickshell
import QtQuick
import QtQuick.Layouts

MouseArea {
    id: root
    property bool hovered: false
    implicitWidth: rowLayout.implicitWidth + (10 * Appearance.uiScale * 2)
    implicitHeight: Appearance.sizes.barHeight

    BarPillBackground { contentItem: rowLayout }

    acceptedButtons: Qt.LeftButton | Qt.RightButton
    hoverEnabled: !Config.options.bar.tooltips.clickToShow

    onPressed: {
        if (mouse.button === Qt.RightButton) {
            Weather.getData();
            Quickshell.execDetached(["notify-send", 
                Translation.tr("Weather"), 
                Translation.tr("Refreshing (manually triggered)")
                , "-a", "Shell"
            ])
            mouse.accepted = false
        }
    }

    RowLayout {
        id: rowLayout
        anchors.centerIn: parent
        spacing: 6 * Appearance.uiScale

        MaterialSymbol {
            fill: 0
            text: Icons.getWeatherIcon(Weather.data.wCode) ?? "cloud"
            iconSize: Appearance.font.pixelSize.huge
            color: Appearance.colors.colOnLayer1
            Layout.alignment: Qt.AlignVCenter
        }

        BarText {
            visible: true
            font.pixelSize: Appearance.font.pixelSize.larger
            color: Appearance.colors.colOnLayer1
            text: Weather.data?.temp ?? "--°"
            Layout.alignment: Qt.AlignVCenter
        }
    }

    BarBloom {
        target: rowLayout
    }

    WeatherPopup {
        id: weatherPopup
        hoverTarget: root
    }
}
