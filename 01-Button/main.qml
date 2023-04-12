import QtQuick 2.14
import QtQuick.Controls 2.14

ApplicationWindow {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row{
        id:buttonsRow //fila de botones. Englobé varios botones en una misma fila.
        anchors.centerIn: parent
        spacing: 2//separación de dos pixeles entre todos los botones

        Button{
            id: button1
            text: "Botón 1"

            onClicked: {
                mainWindow.title = "TÍTULO 1"
            }
        }

        Button{
            id: button2
            text: "Botón 2"

            onClicked: {
                mainWindow.title = "TÍTULO 2"
            }
        }

        Button{
            id: button3
            text: "Botón 3"

            onClicked: {
                mainWindow.title = "TÍTULO 3"
            }
        }

        Button{
            id: exitButton
            text: "Salir"

            onClicked: {
                Qt.quit();//salir de la aplicación
            }
        }
    }

    Button{
        id: button4
        text: "Botón 4"

        anchors {
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
        }

        onClicked: {
            mainWindow.title = "TÍTULO 4"
        }
    }

}
