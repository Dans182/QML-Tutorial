import QtQuick 2.14
import QtQuick.Controls 2.14

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button{
        id: openMenuButton
        text: "Abrir menú"
        onClicked:{
            menu.open()
        }
    }

    Label{
        id: label
        anchors.centerIn: parent
        font.pointSize: 30
        text: "Seleccione una opción del menú"
    }

    Menu {
        id: menu
        y: openMenuButton.height //de esta manera, el desplegable se abre debajo de lbotón y no sobre els

        MenuItem{
            id: opcion1
            text: "opción 1"
            onClicked: {
                label.text = "Opción 1"
            }
        }

        MenuItem{
            id: opcion2
            text: "opción 2"
            onClicked: {
                label.text = "Opción 2"
            }
        }

        MenuItem{
            id: opcion3
            text: "opción 3"
            onClicked: {
                label.text = "Opción 3"
            }
        }
        MenuItem{
            text: "Salir"
            onClicked: {
                Qt.quit()
            }
        }
    }

}
