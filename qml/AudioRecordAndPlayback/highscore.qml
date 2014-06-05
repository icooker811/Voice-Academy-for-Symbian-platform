import QtQuick 1.0
import "storge.js" as Logic
Rectangle {

    width: 360
    height: 640
    signal pageRequested(string page)
    function setDB() {
        var db = openDatabaseSync("highscoreDB", "1.0", "The highscore db", 1000000);
        db.transaction(
            function(tx) {
                // Create the database if it doesn't already exist
                tx.executeSql('CREATE TABLE IF NOT EXISTS highscore(name TEXT, score NUMBER)');
             }
        )
        return db;
    }

    Component.onCompleted:{

            addDB()
    }





    function addDB() {
                var db = setDB();
                db.transaction(
                    function(tx) {


                        tx.executeSql('INSERT INTO highscore(name, score) VALUES(?,?)', ["host", Logic.score]);







                    }
                )


                showDB()

            }


    function showDB() {
        var  db= setDB();
        db.transaction(
            function(tx) {
                var rs = tx.executeSql('SELECT * FROM highscore ORDER BY score DESC');

                var r = ""
                if( rs.rows.length < 10){
                for(var i = 0; i < rs.rows.length; i++) {
                    if(rs.rows.item(i).score!=0)
                    r += (i+1) + "                 " + rs.rows.item(i).score +"\n"

                }
                }
                else if( rs.rows.length >= 10){
                for(var i = 0; i < 10; i++) {
                    if(rs.rows.item(i).score!=0)
                    r += (i+1) + "                 " + rs.rows.item(i).score +"\n"

                }
                }
                //console.log(r);
                text2.text=r;
                    }
        )

    }





    function delectDB(){

                var  db= setDB();
                db.transaction(
                    function(tx) {

                        tx.executeSql('DELETE FROM highscore');






                    }
                )
            }
    Image {
        id: image1
        x: 0
        y: 0
        source: "image/high.png"

        Text {
            id: text3
            x: 90
            y: 172
            text: "No."
            font.pixelSize: 25
        }

        Text {
            id: text4
            x: 186
            y: 172
            text: "Score"
            font.pixelSize: 25
        }
    }

    Text {
        id: text2
        x: 99
        y: 213
        width: 300
        height: 500
        text:"aa"
        font.pixelSize: 25
    }


    Image {
        id: menu
        x: -3
        y: 568
        source: "image/menu1.png"

        MouseArea {
            id: mouse_area3
            x: 9
            y: 10
            width: 112
            height: 56
            onClicked: {

                pageRequested("menu.qml");
            }
        }
        states: State {
            name: "pressed"; when: mouse_area3.pressed == true;
            PropertyChanges { target:menu; opacity:0.8}
        }
    }

    Image {
        id: clear
        x: 241
        y: 572
        source: "image/clear.png"

        MouseArea {
            id: mouse_area1
            x: 8
            y: 8
            width: 108
            height: 56
            onClicked: {

                delectDB()
                showDB()
            }
        }
        states: State {
            name: "pressed"; when: mouse_area1.pressed == true;
            PropertyChanges { target:clear; opacity:0.8}
        }
    }

    Image {
        id: replay
        x: 109
        y: 571
        source: "image/replay.png"

        MouseArea {
            id: mouse_area2
            x: 12
            y: 11
            width: 120
            height: 51
            onClicked: {
                pageRequested("game.qml");
            }
        }
        states: State {
            name: "pressed"; when: mouse_area2.pressed == true;
            PropertyChanges { target:replay; opacity:0.8}
        }
    }

}
