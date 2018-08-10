import QtQuick 2.10
import QtQuick.Controls 2.4

TabView {
    anchors.fill: parent

    Tab {
        title: "Color"
        ColorDialogTab {}
    }

    Tab {
        title: "Message"
        MessageDialogTab {}
    }
}
