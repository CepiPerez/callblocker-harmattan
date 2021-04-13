import QtQuick 1.1
import com.nokia.meego 1.0


Sheet {

    property bool editing: container.selNumber==="" ? true : false

    TextFieldStyle {
        id: myTextFieldStyle
        backgroundSelected: "image://theme/color4-meegotouch-textedit-background-selected"
        selectionColor: "#347708"
    }

    SheetButtonAccentStyle {
        id: mySheetButtonAccentStyle
        background: "image://theme/color4-meegotouch-sheet-button-accent-background"
        pressedBackground: "image://theme/color4-meegotouch-sheet-button-accent-background-pressed"
        disabledBackground: "image://theme/color4-meegotouch-sheet-button-accent-background-disabled"
    }

    Component.onCompleted: {
        dialogOpened()
        titleInput.forceActiveFocus();
    }

    visualParent: parent

    Item {
        id: myButtons
        width: parent.width
        height: 64
        SheetButton {
            id: rejectButton
            text:  qsTr("Cancel")
            anchors.left: parent.left
            anchors.leftMargin: 16
            anchors.verticalCenter: parent.verticalCenter
            onClicked: reject()
        }
        SheetButton {
            id: acceptButton
            text:  qsTr("Done")
            anchors.right: parent.right
            anchors.rightMargin: 16
            anchors.verticalCenter: parent.verticalCenter
            platformStyle: mySheetButtonAccentStyle
            onClicked: accept()
            enabled: titleInput.text !== ""
        }
    }

    buttons: myButtons

    onAccepted: {
        if (editing)
            numbers.addItem( "number", titleInput.text)
        else
            numbers.edit(container.selNumber, titleInput.text)
        commonTools.enabled = true
        dialogClosed()
    }

    onRejected: {
        commonTools.enabled = true
        dialogClosed()
    }


    content: Item {
        id: content
        anchors.fill: parent

        Rectangle {
            anchors.fill: parent
            color: theme.inverted ? "black" : "#f7f7ff"

            Column {
                spacing: 16
                anchors { top: parent.top; left: parent.left; right: parent.right; margins: 10 }
                anchors.leftMargin: 16
                anchors.rightMargin: 16

                Label {
                    color: theme.inverted ? "white" : "black"
                    text: qsTr("Enter new number")
                }

                TextField {
                    id: titleInput
                    width: parent.width
                    platformStyle: myTextFieldStyle
                    text: container.selNumber
                    inputMethodHints: Qt.ImhFormattedNumbersOnly
                    platformSipAttributes: SipAttributes { actionKeyEnabled: titleInput.text !== "" }
                    Keys.onEnterPressed: accept()
                    Keys.onReturnPressed: accept()
                }
            }

        }
    }

    MouseArea {
        z: -1
        anchors.fill: parent
    }
}
