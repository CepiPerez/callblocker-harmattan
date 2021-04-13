import QtQuick 1.1
import com.nokia.meego 1.0
import org.cepi.callblocker 1.0
import QtMobility.contacts 1.1

Page {
    id: contactsPage
    tools: commonTools

    orientationLock: PageOrientation.LockPortrait

    Rectangle {
        id: contacts
        width: parent.width
        height: parent.height - header.height
        anchors.top: header.bottom
        //color: "transparent" //theme.inverted ? "black" : "white" // "#f7f7ff"
        color: "transparent"

        ListView {
            id: contactos
            anchors.fill: contacts
            anchors.topMargin: 0
            anchors.margins: 0

            model: contactsModel

            Connections {

            }

            delegate: FileDelegate
            {
                height: 76
                name: model.contact.displayLabel
                desc: model.contact.displayLabel
                contacticon: model.contact.avatar.imageUrl.toString() !== "" ? model.contact.avatar.imageUrl :
                             "image://theme/icon-l-content-avatar-placeholder"

                onClicked: {

                    for ( var i=model.contact.phoneNumbers.length-1; i>=0; --i )
                    {
                        numbers.addItem( "number", model.contact.phoneNumbers[i].number );
                    }
                    //numbers.addItem( "id", model.contact.contactId );
                    pageStack.pop()
                }

                onPressAndHold:  {
                    //contacts.selNumber = model.name;
                    //myMenu.open()
                }
           }
        }

        ScrollDecorator {
            flickableItem: contactos
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
            text: qsTr("Add contact")
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
    }

}
