import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.2

Item {
    anchors.fill: parent

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: spacing
        RowLayout {
            ComboBox {
                model: ListModel {
                    ListElement { text: "ComboBox" }
                    ListElement { text: "ComboBox2" }
                    ListElement { text: "ComboBox3" }
                }
            }

            TextField {
                Layout.fillWidth: true
                placeholderText: "TextField"
            }

            Button {
                text: "Button"
            }
        }

        GroupBox {
            title: "GroupBox"
            Layout.fillWidth: true

            GridLayout {
                rows: 3
                flow: GridLayout.TopToBottom
                anchors.fill: parent

                ButtonGroup { id: radioGroup }

                RadioButton {
                    text: "RadioButton1"
                    ButtonGroup.group: radioGroup
                }
                RadioButton {
                    text: "RadioButton2"
                    ButtonGroup.group: radioGroup
                }
                RadioButton {
                    text: "RadioButton3"
                    ButtonGroup.group: radioGroup
                }

                CheckBox {
                    text: "CheckBox1"
                }
                CheckBox {
                    text: "CheckBox2"
                }
                CheckBox {
                    text: "CheckBox3"
                    enabled: false
                }
            }
        }

        RowLayout {
            Label {
                text: "Label"
            }

            Switch {
                id: switchComponent
                checked: true
            }

            SpinBox {
                Layout.fillWidth: true
            }
        }

        ProgressBar {
            Layout.fillWidth: true
            value: sliderComponent.value
        }

        Slider {
            id: sliderComponent
            Layout.fillWidth: true
        }

        TextArea {
            Layout.fillWidth: true
            Layout.fillHeight: true
            text: "TextArea"
        }
    }
}
