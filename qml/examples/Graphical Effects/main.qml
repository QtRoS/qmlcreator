import QtQuick 2.11
import QtQuick.Controls 2.4

TabView {
    anchors.fill: parent

    Tab {
        title: "Brightness contrast"
        BrightnessContrastTab {}
    }

    Tab {
        title: "Desaturate"
        DesaturateTab {}
    }

    Tab {
        title: "Directional Blur"
        DirectionalBlurTab {}
    }
}
