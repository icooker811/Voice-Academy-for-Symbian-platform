import QtQuick 1.0

Rectangle {
    width: 360
    height: 640
    signal pageRequested(string page)

    Image {
        id: image1
        x: 0
        y: 0
        source: "image/how.png"
    }

    Image {
        id: image2
        x: -3
        y: 568
        source: "image/menu1.png"

        MouseArea {
            id: mouse_area2
            x: 11
            y: 9
            width: 108
            height: 55
            onClicked: {
                pageRequested("menu.qml");
            }
        }
        states: State {
            name: "pressed"; when: mouse_area2.pressed == true;
            PropertyChanges { target:image2; opacity:0.8}
        }
    }

    Image {
        id: image4
        x: 107
        y: 567
        source: "image/play2.png"

        MouseArea {
            id: mouse_area1
            x: 12
            y: 9
            width: 130
            height: 59
            onClicked: {
                pageRequested("game.qml");
            }
        }
        states: State {
            name: "pressed"; when: mouse_area1.pressed == true;
            PropertyChanges { target:image4; opacity:0.8}
        }
    }

    Image {
        id: image3
        x: 241
        y: 569
        source: "image/next.png"

        MouseArea {
            id: mouse_area3
            x: 13
            y: 9
            width: 100
            height: 54
            onClicked: {

            }
        }
        states: State {
            name: "pressed"; when: mouse_area3.pressed == true;
            PropertyChanges { target:image3; opacity:0.8}
        }
    }

}
