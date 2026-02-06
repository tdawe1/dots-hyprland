import QtQuick
import QtQuick.Layouts

import qs.modules.common
import qs.modules.common.widgets
import qs.modules.ii.bar

Rectangle {
    id: root
    radius: Appearance.rounding.small
    color: Appearance.colors.colSurfaceContainerHigh
    implicitWidth: columnLayout.implicitWidth + (14 * Appearance.uiScale * 2)
    implicitHeight: columnLayout.implicitHeight + (14 * Appearance.uiScale * 2)
    Layout.fillWidth: parent

    property alias title: title.text
    property alias value: value.text
    property alias symbol: symbol.text

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent
        spacing: -10 * Appearance.uiScale
        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            MaterialSymbol {
                id: symbol
                fill: 0
                iconSize: Appearance.font.pixelSize.normal
                color: Appearance.colors.colOnSurfaceVariant
            }
            BarText {
                id: title
                font.pixelSize: Appearance.font.pixelSize.smaller
                color: Appearance.colors.colOnSurfaceVariant
            }
        }
        BarText {
            id: value
            Layout.alignment: Qt.AlignHCenter
            font.pixelSize: Appearance.font.pixelSize.small
            color: Appearance.colors.colOnSurfaceVariant
        }
    }
}
