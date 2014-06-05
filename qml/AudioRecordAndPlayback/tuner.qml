import QtQuick 1.0
import AudioRecorder 1.0

Rectangle {
    width: 360
    height: 640
    color: "#f3dc68"
    signal pageRequested(string page)

    Image {
        id: image2
        x: 0
        y: 0
        source: "image/voicebg.png"
    }

    AudioRecorder {
        id: audioRecorder
    }

    property int freq2: 0
    property int status: 0
    property int time: 0
    property int mode: 0
    property int min: 0
    property int max: 0
    property variant c: ["image/Soprano.png","image/Mezzo.png","image/Contralto.png","image/Tenor.png","image/Bass.png"]
    property int i:1



    Timer {
        id:timer
        interval: 100; running: true; repeat: true;
        onTriggered:{
            timeChanged();
        }
    }
    function  timeChanged(){
        if(time==0){
            audioRecorder.record();
            status = 1;
            time++;

        }
        if(status==1){
            freq2=audioRecorder.freq();
            //freq1.text=freq2;
            //console.log(freq2);
            setValue();
            checkRange();
        }

    }





    Image {
        id: image1
        x: 116
        y: 191
        source: "image/sound_recorder.png"
        states: State {
            name: "pressed"; when: record.pressed == true;
            PropertyChanges { target:image1; opacity:0.8}
        }
    }

    Image {
        id: image7
        x: 256
        y: 179
        source: "image/right.png"
    }

    Image {
        id: image8
        x: 9
        y: 179
        source: "image/left.png"
    }


    Image {
        id: image9
        x: 9
        y: 179
        visible: false
        source: "image/leftLight.png"
    }

    Image {
        id: image11
        x: 256
        y: 179
        visible: false
        source: "image/rightLight.png"
    }

    Image {
        id: image12
        x: 81
        y: 155
        visible: false
        source: "image/sound_recorder1.png"
    }

    Image {
        id: image3
        x: 92
        y: 360
        width: 176
        height: 70
        source: "image/Soprano.png"

        MouseArea {
            id: mouse_area1
            x: 0
            y: 0
            width: 176
            height: 70
            drag.minimumY: -1000
            drag.minimumX: -1000
            drag.maximumY: 1000
            drag.maximumX: 1000
            onClicked: {
                image3.source = c[i%5];
                mode = i%5;
                i++;
            }
        }
    }

    Image {
        id: play
        x: 173
        y: 562
        source: "image/play1.png"

        MouseArea {
            id: mouse_area2
            x: 9
            y: 10
            width: 160
            height: 60
            onClicked: {
                pageRequested("game.qml");
            }
        }
        states: State {
            name: "pressed"; when: mouse_area2.pressed == true;
            PropertyChanges { target:play; opacity:0.8}
        }
    }

    Image {
        id: back
        x: 8
        y: 566
        source: "image/back.png"

        MouseArea {
            id: mouse_area3
            x: 9
            y: 8
            width: 150
            height: 55
            onClicked: {
                pageRequested("menu.qml");
            }
        }
        states: State {
            name: "pressed"; when: mouse_area3.pressed == true;
            PropertyChanges { target:back; opacity:0.8}
        }
    }





    /*
  Soprano: C4(261.63) - C6(1046.5)
  Mezzo-soprano: A3(220) – A5(880)
  Contralto: F3(174.61) – F5(698.46)
  Tenor: C3(130.81) – C5(523.25)
  Baritone: F2(87.31) – F4(349.23)
  Bass: E2(82.41) – E4(329.63)
  */


    function setValue(){
        //Soprano
        if(mode==0){
            min=700;
            max=1046.5;
        }
        //Mezzo
        else if(mode==1){
            min=220;
            max=880;
        }
        //Contralto
        else if(mode==2){
            min=174.61;
            max=698.46;
        }
        //Tenor
        else if(mode==3){
            min=130.81;
            max=523.25;
        }
        //Bass
        else if(mode==4){
            min=82.41;
            max=200;
        }
    }
    function checkRange(){
        if(freq2>=min && freq2<=max){
            image9.visible=false;
            image11.visible=false;
            image12.visible=true;
        }
        else if(freq2<min && freq2!==0){
            image9.visible=true;
            image11.visible=false;
            image12.visible=false;
        }
        else if(freq2>max){
            image11.visible=true;
            image9.visible=false;
            image12.visible=false;
        }
        else if(freq2==0){
            image11.visible=false;
            image9.visible=false;
            image12.visible=false;
        }



    }






}
