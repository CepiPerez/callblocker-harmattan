import QtQuick 1.1
import com.nokia.meego 1.0

Item {
    id: delegate

    property string title

    signal clicked
    signal pressAndHold

    width: parent.width
    height: 80

    Image {
        id: highlight
        anchors.fill: parent
        source: "image://theme/meegotouch-list-fullwidth" + (theme.inverted ? "-inverted" : "") + "-background-pressed-center"
        smooth: true
        visible: mouseArea.pressed
    }


    Text {
        anchors { fill: parent; leftMargin: 16 }
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 20
        font.bold: true
        text: qsTr(title)
    }

    Image {
        anchors { right: parent.right; rightMargin: 20; verticalCenter: parent.verticalCenter }
        source: "../icons/drilldown-arrow.png"
    }

    MouseArea {
        id: mouseArea

        anchors.fill: parent
        onClicked: parent.clicked()
        onPressAndHold: parent.pressAndHold()
    }
}
