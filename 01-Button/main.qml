import QtQuick 2.14
import QtQuick.Controls 2.14

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button{
        id: exitButton
        onClicked: {
            Qt.quit();//salir de la aplicación
        }
    }

}
