import QtQuick 1.1
import com.nokia.meego 1.0
import org.cepi.callblocker 1.0

Page {

    orientationLock: PageOrientation.LockPortrait

    SwitchStyle {
        id: mySwitchStyle
        switchOn: "image://theme/color4-meegotouch-switch-on"+__invertedString
    }
    ButtonStyle {
        id: myButtonStyleLeft
        pressedBackground: "image://theme/color4-meegotouch-button-background-pressed-horizontal-left"
        checkedBackground: "image://theme/color4-meegotouch-button-background-selected-horizontal-left"
    }
    ButtonStyle {
        id: myButtonStyleRight
        pressedBackground: "image://theme/color4-meegotouch-button-background-pressed-horizontal-right"
        checkedBackground: "image://theme/color4-meegotouch-button-background-selected-horizontal-right"
    }

    tools: ToolBarLayout {
        id: toolBar

        /*ToolIcon {
            anchors.right: parent.right
            platformIconId: "toolbar-view-menu"
            //onClicked: appWindow.pageStack.pop()
        }*/
    }


    Rectangle {
        id: listado
        color: "transparent"
        anchors.top: header.bottom
        height: parent.height - header.height
        width: parent.width

        Column {
            width: parent.width

            GroupSeparator {
                title: qsTr("Options")
            }

            Row {
                width: parent.width
                height: 50

                Text {
                    text: qsTr("Activate call blocker")
                    horizontalAlignment: Text.AlignRight
                    font.pointSize: 20
                    font.bold: true
                    anchors.left: parent.left
                    anchors.leftMargin: 16
                    anchors.verticalCenter: parent.verticalCenter
                    color: theme.inverted ? "white" : "black"
                }
                Switch {
                    id: actmode
                    anchors.right: parent.right
                    anchors.rightMargin: 16
                    anchors.verticalCenter: parent.verticalCenter
                    checked: sets.active=="true" ? true : false
                    platformStyle: mySwitchStyle
                    onCheckedChanged: { sets.changeActive(actmode.checked) }
                }
            }

            Row {
                width: parent.width
                height: 110

                Text {
                    text: qsTr("Block unknown numbers")
                    horizontalAlignment: Text.AlignRight
                    font.pointSize: 20
                    font.bold: true
                    anchors.left: parent.left
                    anchors.leftMargin: 16
                    anchors.verticalCenter: parent.verticalCenter
                    color: theme.inverted ? "white" : "black"
                }
                Switch {
                    id: unknown
                    anchors.right: parent.right
                    anchors.rightMargin: 16
                    anchors.verticalCenter: parent.verticalCenter
                    checked: sets.unknown=="true" ? true : false
                    platformStyle: mySwitchStyle
                    onCheckedChanged: { sets.changeUnknown(unknown.checked) }
                }
            }

            SelectionItem {
                id: sitem
                title: qsTr("Calls block mode")
                model: ListModel {
                    ListElement { name: QT_TR_NOOP("Blacklist"); value: "blacklist" }
                    ListElement { name: QT_TR_NOOP("Whitelist"); value: "whitelist" }
                }
                initialValue: sets.mode
                onValueChosen: { sets.changeMode(value) }
            }


            GroupSeparator {
                title: qsTr("Lists")
            }

            Repeater {
                id: repeater

                model: ListModel {
                    id: settingsModel
                    ListElement { name: QT_TR_NOOP("Manage blacklist"); type: "blacklist" }
                    ListElement { name: QT_TR_NOOP("Manage whitelist"); type: "whitelist" }

                }

                DrillDownDelegate {
                    id: delegate
                    width: parent.width
                    title: name
                    onClicked: {
                        listType = type
                        appWindow.pageStack.push(Qt.resolvedUrl("NumbersList.qml"))
                    }
                }
            }

        }
    }

    Rectangle {
        id: header
        height: 71
        color: "transparent"
        anchors { left: parent.left; top: parent.top; right: parent.right }

        Image {
            width: header.width; height: header.height
            fillMode: Image.TileHorizontally
            smooth: true
            source: "image://theme/color4-meegotouch-view-header-fixed"
        }

        Label {
            x: 16
            width: parent.width - 20
            elide: Text.ElideRight
            font.pixelSize: 32
            color: "white"
            text: qsTr("Call Blocker")
            anchors.verticalCenter: header.verticalCenter
        }

    }

}
