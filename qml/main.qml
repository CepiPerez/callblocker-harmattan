import QtQuick 1.1
import com.nokia.meego 1.0
import org.cepi.callblocker 1.0
import QtMobility.contacts 1.1

PageStackWindow {
    id: appWindow

    showToolBar: ! __dialogOpen

    property bool __dialogOpen: false

    function dialogOpened() {
        __dialogOpen = true;
    }

    function dialogClosed() {
        __dialogOpen = false;
    }


    initialPage: mainPage

    MainPage { id: mainPage }
    Settings { id: sets }

    Numbers {
        id: numbers
        list: listType
    }

    ContactModel {
        id: contactsModel
        sortOrders: [
            SortOrder {
                detail:ContactDetail.Organization
                field:Organization.Name
                direction:Qt.AscendingOrder
            },
            SortOrder {
                detail:ContactDetail.Name
                field:Name.FirstName
                direction:Qt.AscendingOrder
            }
        ]
        filter: DetailFilter {
            detail: ContactDetail.PhoneNumber
            field: PhoneNumber.PhoneNumber
        }
    }
    property string listType

}
