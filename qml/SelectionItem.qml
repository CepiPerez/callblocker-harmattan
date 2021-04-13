import QtQuick 1.1
import com.nokia.meego 1.0

Item {

    property alias title: title.text
    property string initialValue
    property string currentValue
    property alias model: selDialog.model

    signal valueChosen(string value)

    width: parent.width
    height: 80

    function getInitialValue() {
        currentValue = sets.mode;
    }

    onInitialValueChanged: getInitialValue()
    Component.onCompleted: getInitialValue()

    BorderImage
    {
        anchors.fill: parent
        visible:  mouseArea.pressed ? true : false
        source: "image://theme/meegotouch-list-fullwidth" + (theme.inverted ? "-inverted" : "") + "-background-pressed-center"
    }

    Column {

        anchors { left: parent.left; leftMargin: 16; verticalCenter: parent.verticalCenter }
        spacing: 10

        Text {
            id: title
            text: qsTr(title.text)
            font.bold: true
            font.pointSize: 20
            color: "black"
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: subTitle
            color: "#4d4d4d"
            font.pointSize: 18
            verticalAlignment: Text.AlignVCenter
            text: sets.mode=="blacklist" ? qsTr("Blacklist") : qsTr("Whitelist")
        }
    }

    Image {
        anchors { right: parent.right; rightMargin: 20; verticalCenter: parent.verticalCenter }
        source: "../icons/combobox-arrow.png"
        sourceSize.width: width
        sourceSize.height: height
    }

    MouseArea {
        id: mouseArea

        anchors.fill: parent
        onClicked: selDialog.open()
    }


    Dialog {
        id: selDialog
        anchors.fill: parent
        anchors.leftMargin: 20
        anchors.rightMargin: 20

        property ListModel model: ListModel{}

        onClicked: {}
        onRejected: {}

        content: Rectangle {
            MouseArea {
                anchors.fill: parent
            }

            height: 220
            width: parent.width
            color:  "transparent"

            Text {
                id: sd1
                width: parent.width
                font.pixelSize: 32
                horizontalAlignment: Text.AlignLeft
                height: 48
                color: "#347708"
                text: qsTr("Calls block mode")
            }

            Rectangle {
                id: sd2
                anchors.top: sd1.bottom
                width: parent.width
                height: 1
                color: "gray"
            }

            Image {
                anchors.top: sd1.top
                anchors.right: parent.right
                source: "image://theme/icon-m-common-dialog-close"
                MouseArea {
                    anchors.fill: parent;
                    onPressed: selDialog.reject()
                }
            }

            Rectangle {
                id: sd3
                anchors.top: sd2.bottom
                anchors.topMargin: 12
                width: parent.width
                height: 60
                color: "transparent"
                Rectangle {
                    anchors.fill: parent
                    color: "#3D3D3D"
                    visible: sets.mode=="blacklist" ? true : itemarea1.pressed ? true : false
                }
                Text {
                    text: qsTr("Blacklist")
                    color: "white"
                    font.pixelSize: 26
                    anchors.fill: parent
                    anchors.leftMargin: 14
                    anchors.topMargin: 14
                }
                MouseArea {
                    id: itemarea1
                    anchors.fill: parent;
                    onClicked: {
                        valueChosen("blacklist")
                        selDialog.reject();
                    }
                }
            }

            Rectangle {
                id: sd4
                anchors.top: sd3.bottom
                width: parent.width
                height: 60
                color: "transparent"
                Rectangle {
                    anchors.fill: parent
                    color: "#3D3D3D"
                    visible: sets.mode=="whitelist" ? true : itemarea2.pressed ? true : false
                }
                Text {
                    text: qsTr("Whitelist")
                    color: "white"
                    font.pixelSize: 26
                    anchors.fill: parent
                    anchors.leftMargin: 14
                    anchors.topMargin: 14
                }
                MouseArea {
                    id: itemarea2
                    anchors.fill: parent;
                    onClicked: {
                        valueChosen("whitelist")
                        selDialog.reject();
                    }
                }
            }

        }
    }

}
