pragma Singleton
import QtQuick
import qs.modules.common
import qs.modules.common.functions

QtObject {
    id: root

    property string modeSetting: Config?.options?.bar?.style?.mode ?? "auto"
    property string effectiveMode: modeSetting === "auto"
        ? (Appearance.m3colors.darkmode ? "dark" : "light")
        : modeSetting
    property bool isLight: effectiveMode === "light"
    property bool staticBackground: Config?.options?.bar?.style?.staticBackground ?? true

    // Soft glass preset for light mode (slightly darker than pill shade)
    property color barBackground: isLight
        ? (staticBackground
            ? ColorUtils.transparentize(
                ColorUtils.mix(Appearance.colors.colLayer1, Appearance.colors.colPrimaryContainer, 0.35),
                0.13
            )
            : Appearance.colors.colLayer1
        )
        : Appearance.colors.colLayer0
    property color barBorder: isLight
        ? ColorUtils.transparentize(Appearance.colors.colLayer0Border, 0.45)
        : Appearance.colors.colLayer0Border
    property color groupBackground: isLight
        ? ColorUtils.transparentize(Appearance.colors.colLayer1, 0.18)
        : Appearance.colors.colLayer1
    property color pillBackground: isLight
        ? ColorUtils.transparentize(
            ColorUtils.mix(Appearance.colors.colLayer1, Appearance.colors.colPrimaryContainer, 0.35),
            0.25
        )
        : Appearance.colors.colLayer1
    property color pillBorder: isLight
        ? ColorUtils.transparentize(Appearance.colors.colPrimary, 0.7)
        : "transparent"

    property bool shadowVisible: isLight && !Config.options.bar.borderless
    property color shadowBaseColor: isLight ? Appearance.colors.colPrimary : Appearance.colors.colShadow
    property real shadowTransparentize: isLight ? 0.55 : 0.4
    property real shadowBlurFactor: 0.7
    property int textWeightLight: 550

    property color innerShadeEdge: "transparent"
    property color innerShadeMid: "transparent"

    // Bloom/glow for light mode
    property color bloomCenter: isLight
        ? ColorUtils.transparentize(
            ColorUtils.mix(barBackground, Appearance.colors.colPrimary, 0.45),
            0.05
        )
        : "transparent"
    property color bloomEdge: isLight
        ? ColorUtils.transparentize(barBackground, 0.85)
        : "transparent"
    property color bloomOuter: isLight
        ? ColorUtils.transparentize(
            ColorUtils.mix(barBackground, Appearance.colors.colPrimary, 0.4),
            0.7
        )
        : "transparent"
    property real bloomBlurFactor: 1.4

    property color accentPink: isLight
        ? ColorUtils.transparentize(Appearance.colors.colPrimary, 0.15)
        : "transparent"
    property color accentPinkSoft: isLight
        ? ColorUtils.transparentize(
            ColorUtils.mix(Appearance.colors.colOnLayer1, Appearance.colors.colPrimary, 0.7),
            0.55
        )
        : "transparent"

}
