import QtQuick
import qs.services
import qs.modules.common
import qs.modules.common.widgets
import qs.modules.ii.bar

Loader {
    id: root
    property bool vertical: false
    property color color: Appearance.colors.colOnSurfaceVariant
    active: HyprlandXkb.layoutCodes.length > 1
    visible: active

    function abbreviateLayoutCode(fullCode) {
    return fullCode.split(':').map(layout => {
            const baseLayout = layout.split('-')[0];
            return baseLayout.slice(0, 4);
        }).join('\n');
    }

    sourceComponent: Item {
        implicitWidth: root.vertical ? null : layoutCodeText.implicitWidth
        implicitHeight: root.vertical ? layoutCodeText.implicitHeight : null

        BarText {
            id: layoutCodeText
            anchors.centerIn: parent
            horizontalAlignment: Text.AlignHCenter
            text: abbreviateLayoutCode(HyprlandXkb.currentLayoutCode)
            font.pixelSize: text.includes("\n")
                ? Math.round(Appearance.font.pixelSize.large * 1.4)
                : Math.round(Appearance.font.pixelSize.huge * 1.6)
            color: BarStyle.isLight
                ? ColorUtils.mix(root.color, BarStyle.accentPink, 0.75)
                : root.color
            animateChange: true
        }
    }
}
