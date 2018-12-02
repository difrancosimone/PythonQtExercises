import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0

ApplicationWindow {
    id: mainWindow
    width: 160
    height: 300
    title: "Prima QT App"

    Item{
        id: page
        visible: true

        width: parent.width

        Rectangle{
            id: myrectangle
            height: { return 160 }
            color: "#ff0000"
            width: parent.width

            Text{
                id: mainText
                text: "Prova testo normale"
                height: 50
                width: parent.width
                font.pixelSize: 12
                horizontalAlignment: Text.AlignHCenter
                color: "#aaa"
            }

            Button{
                id: mainButton
                text: "Push me!"
                anchors.top: mainText.bottom
                onClicked: {
                    console.log("I'\m:"+myrectangle.color)
                    if (myrectangle.color == "#000000"){
                        myrectangle.color = "#f00"
                    } else {
                        myrectangle.color = "#000"
                    }
                }
            }
         }
    }
}