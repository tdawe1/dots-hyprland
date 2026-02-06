import QtQuick
import QtQuick.Layouts
import qs.modules.common
import qs.modules.common.widgets

RowLayout {
    id: root
    required property string icon
    required property string label
    required property string value
    spacing: 4 * Appearance.uiScale

    MaterialSymbol {
        text: root.icon
        color: Appearance.colors.colOnSurfaceVariant
        iconSize: Appearance.font.pixelSize.large
    }
    BarText {
        text: root.label
        color: Appearance.colors.colOnSurfaceVariant
    }
    BarText {
        Layout.fillWidth: true
        horizontalAlignment: Text.AlignRight
        visible: root.value !== ""
        color: Appearance.colors.colOnSurfaceVariant
        text: root.value
    }
}
