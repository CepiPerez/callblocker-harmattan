import QtQuick 1.1
import com.nokia.meego 1.0
import org.cepi.callblocker 1.0
import "createobject.js" as ObjectCreator
import QtMobility.contacts 1.1

Page {
    id: mainPage
    tools: commonTools

    orientationLock: PageOrientation.LockPortrait

    function addItem(number) {
        numbers.addItem(number)
    }


    Rectangle {
        id: listado
        width: parent.width
        height: parent.height - header.height
        anchors.top: header.bottom
        //color: "transparent" //theme.inverted ? "black" : "white" // "#f7f7ff"
        color: "transparent"

        ListView {
            id: container
            anchors.fill: listado
            anchors.topMargin: 0
            anchors.margins: 0

            property string selNumber

            model: numbers

            Connections {

            }

            delegate: FileDelegate
            {
                height: 76
                name: model.name
                desc: model.desc
                avatar: model.avatar
                //cname : ContactModel.contacts.

                onClicked: {

                }

                onPressAndHold:  {
                    container.selNumber = model.desc;
                    myMenu.open()
                }
           }
        }

        ScrollDecorator {
            flickableItem: container
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
            text: listType=="whitelist" ? qsTr("Whitelist") : qsTr("Blacklist")
            anchors.verticalCenter: header.verticalCenter
        }

    }

    ToolBarLayout {
        id: commonTools
        visible: true
        ToolIcon { platformIconId: "toolbar-back";
            anchors.left: parent.left
            onClicked: pageStack.pop()
        }
        ToolIcon { platformIconId: "toolbar-add";
            //anchors.right: parent.right
            onClicked: {
                container.selNumber = ""
                var addDialog = ObjectCreator.createObject(Qt.resolvedUrl("AddNumber.qml"), appWindow.pageStack);
                addDialog.open();
            }
        }
        ToolIcon { platformIconId: "toolbar-addressbook";
            anchors.right: parent.right
            onClicked: {
                container.selNumber = ""
                appWindow.pageStack.push(Qt.resolvedUrl("Contacts.qml"))
            }
        }
    }

    Menu {
        id: myMenu
        MenuLayout {
            MenuItem {
                text: qsTr("Edit")
                onClicked: {
                    var addDialog = ObjectCreator.createObject(Qt.resolvedUrl("AddNumber.qml"), appWindow.pageStack);
                    addDialog.open();
                }
            }
            MenuItem {
                text: qsTr("Delete")
                onClicked: { numbers.remove( container.selNumber ) }
            }
        }
    }


}
