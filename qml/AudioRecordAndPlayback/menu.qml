import QtQuick 1.0


Rectangle {
    width: 360
    height: 640
    signal pageRequested(string page);

    Image {
        id: image1
        x: 0
        y: 0
        source: "image/menu.png"
    }

    Image {
        id: voice
        x: 53
        y: 330
        source: "image/voice.png"

        MouseArea {
            id: mouse_area2
            x: 10
            y: 10
            width: 264
            height: 97
            onClicked: {
                pageRequested("tuner.qml")

            }
        }
        states: State {
            name: "pressed"; when: mouse_area2.pressed == true;
            PropertyChanges { target:voice; opacity:0.8}
        }
    }

    Image {
        id: play
        x: 28
        y: 225
        source: "image/play.png"

        MouseArea {
            id: mouse_area1
            x: 11
            y: 8
            width: 244
            height: 112
            onClicked: {
                pageRequested("game.qml")
            }
        }
        states: State {
            name: "pressed"; when: mouse_area1.pressed == true;
            PropertyChanges { target:play; opacity:0.8}
        }
    }

    Image {
        id: help
        x: 94
        y: 434
        source: "image/help.png"

        MouseArea {
            id: mouse_area3
            x: 11
            y: 14
            width: 233
            height: 73
            onClicked: {
                pageRequested("help.qml");
            }
        }
        states: State {
            name: "pressed"; when: mouse_area3.pressed == true;
            PropertyChanges { target:help; opacity:0.8}
        }
    }

    Image {
        id: quit
        x: 64
        y: 521
        source: "image/quit.png"

        MouseArea {
            id: mouse_area4
            x: 9
            y: 13
            width: 272
            height: 75
            onClicked:{Qt.quit(); }
        }
        states: State {
            name: "pressed"; when: mouse_area4.pressed == true;
            PropertyChanges { target:quit; opacity:0.8}
        }
    }






}
