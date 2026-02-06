import QtQuick
import qs.modules.common
import qs.modules.common.widgets

StyledText {
    id: root

    readonly property var baseAxes: root.shouldUseNumberFont
        ? Appearance.font.variableAxes.numbers
        : Appearance.font.variableAxes.main

    font.variableAxes: {
        var base = baseAxes || ({});
        var result = ({});
        for (var key in base) {
            result[key] = base[key];
        }
        if (BarStyle.isLight) {
            var wght = BarStyle.textWeightLight;
            if (wght !== undefined && wght !== null) {
                result["wght"] = wght;
            }
        }
        return result;
    }
    font.weight: BarStyle.isLight ? Font.Medium : Font.Normal

    style: Text.Normal
}
