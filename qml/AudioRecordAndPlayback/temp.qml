import Qt 4.7

Rectangle {
    width: 360
    height: 640
    function changePage(newPage)
        {
            pageLoader.source = newPage;
            console.log(newPage)
        }

        Loader {
            id: pageLoader
            x: 0
            y: 0
            z: 1
            source: "menu.qml"
        }

        Connections {
            target: pageLoader.item
            onPageRequested: changePage(page)
        }
}

