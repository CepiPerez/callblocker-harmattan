import QtQuick 1.1
import com.nokia.meego 1.0
import org.cepi.callblocker 1.0

Item
{
        id: itemcontainer
        signal clicked
        signal pressAndHold

        property alias name: name.text
        property alias desc: desc.text
        property string avatar
        property string contacticon
        property string cname

        anchors.left: parent.left
        anchors.right: parent.right
        clip: true

        BorderImage
        {
            id: background2
            anchors.fill: itemcontainer
            visible:  mouseArea.pressed ? true : false
            source: "image://theme/meegotouch-list-fullwidth" + (theme.inverted ? "-inverted" : "") + "-background-pressed-center"
        }

        Rectangle {
            width: parent.width
            height: 1
            anchors.top: parent.top
            anchors.topMargin: 75
            anchors.left: parent.left
            color: theme.inverted ? "#2e2e2e" : "#c0c0c0"
            visible: true
        }

        MaskedItem {
            id: icon
            width: 64
            height: 64
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 12
            mask: Image {
                source: "image://theme/meegotouch-avatar-placeholder-background"
            }

            Image {
                id: iconimage
                anchors.verticalCenter: parent.verticalCenter
                width: 64
                height: 64
                smooth: true
                source: contacticon == "" ? avatar : contacticon
            }
        }

        Image
        {
            id: imageframe
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: icon.left
            width: 64
            height: 64
            smooth: true
            source: "image://theme/meegotouch-contactsui-avatar-frame"
            //visible: exten.text.charAt(0)=="/" ? true : false
        }


        Text
        {
            id: name
            anchors.top: parent.top
            anchors.topMargin: desc.visible ? 10 : 22
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 86
            anchors.rightMargin: 12
            width: itemcontainer.width - 90
            font.pointSize: 20
            font.bold: true
            elide: Text.ElideRight
            color: enabled ? theme.inverted ? "#ffffff" : "#282828" : "#8c8e8c"
        }

        Text
        {
            id: desc
            anchors.top: name.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 86
            anchors.rightMargin: 12
            width: itemcontainer.width - 90
            font.pointSize: 16
            visible: desc.text == name.text ? false : true
            elide: Text.ElideRight
            color: enabled ? theme.inverted ? "#ffffff" : "#282828" : "#8c8e8c"
        }

        MouseArea
        {
            id: mouseArea
            anchors.fill: itemcontainer
            onClicked: itemcontainer.clicked()
            onDoubleClicked: itemcontainer.doubleClicked()
            onPressAndHold: itemcontainer.pressAndHold()
        }
}
