import QtQuick 1.0
import AudioRecorder 1.0
import "storge.js" as Logic
Rectangle {
    width: 360
    height: 640
    signal pageRequested(string page)

    property int run: 1
    property int lv:1
    property int score:0
    property int wrong:0
    property int freq:0
    property int starttt:0

    property int mainscore:0

    property int board0:1
    property int board1:1
    property int board2:1
    property int board3:1
    property int board4:1
    property int board5:1
    property int board6:1
    property int board7:1
    property int board8:1
    property int board9:1
    property int board10:1
    property int board11:1
    property int board12:1
    property int board13:1
    property int board14:1
    property int board15:1
    property int board16:1
    property int board17:1
    property int board18:1
    property int board19:1

    property int time0:0
    property int time1:0
    property int time2:0
    property int time3:0
    property int time4:0
    property int time5:0
    property int time6:0
    property int time7:0
    property int time8:0
    property int time9:0
    property int time10:0
    property int time11:0
    property int time12:0
    property int time13:0
    property int time14:0
    property int time15:0
    property int time16:0
    property int time17:0
    property int time18:0
    property int time19:0
    property bool enabled : true
    property int set : 0
    Timer {
        id:timer
        interval: 10; running: true; repeat: true;
        onTriggered:

            timeChanged();
    }
    AudioRecorder {
        id: audioRecorder
    }

    function setScore() {
        Logic.score=score;
        return Logic.score;
    }
    function start(){
        if(background.enabled==true){
            if(bar1.y==24){
                board0=(300-(10*(lv-1)))*Math.random();
                if(board0==0){
                    bar1.source="image/bar_gray.png";
                }
            }
            if(bar2.y==24){
                board1=(300-(10*(lv-1)))*Math.random();
                if(board1==0){
                    bar2.source="image/bar_gray.png";
                }
            }
            if(bar3.y==24){
                board2=(300-(10*(lv-1)))*Math.random();
                if(board2==0){
                    bar3.source="image/bar_gray.png";
                }
            }
            if(bar4.y==24){
                board3=(300-(10*(lv-1)))*Math.random();
                if(board3==0){
                    bar4.source="image/bar_gray.png";
                }
            }

            if(bar5.y==24){
                board4=(300-(10*(lv-1)))*Math.random();
                if(board4==0){
                    bar5.source="image/bar_blue.png";
                }
            }
            if(bar6.y==24){
                board5=(300-(10*(lv-1)))*Math.random();
                if(board5==0){
                    bar6.source="image/bar_blue.png";
                }
            }
            if(bar7.y==24){
                board6=(300-(10*(lv-1)))*Math.random();
                if(board6==0){
                    bar7.source="image/bar_blue.png";
                }
            }
            if(bar8.y==24){
                board7=(300-(10*(lv-1)))*Math.random();
                if(board7==0){
                    bar8.source="image/bar_blue.png";
                }
            }

            if(bar9.y==24){
                board8=(300-(10*(lv-1)))*Math.random();
                if(board8==0){
                    bar9.source="image/bar_green.png";
                }
            }
            if(bar10.y==24){
                board9=(300-(10*(lv-1)))*Math.random();
                if(board9==0){
                    bar10.source="image/bar_green.png";
                }
            }
            if(bar11.y==24){
                board10=(300-(10*(lv-1)))*Math.random();
                if(board10==0){
                    bar11.source="image/bar_green.png";
                }
            }
            if(bar12.y==24){
                board11=(300-(10*(lv-1)))*Math.random();
                if(board11==0){
                    bar12.source="image/bar_green.png";
                }
            }

            if(bar13.y==24){
                board12=(300-(10*(lv-1)))*Math.random();
                if(board12==0){
                    bar13.source="image/bar_pink.png";
                }
            }
            if(bar14.y==24){
                board13=(300-(10*(lv-1)))*Math.random();
                if(board13==0){
                    bar14.source="image/bar_pink.png";
                }
            }
            if(bar15.y==24){
                board14=(300-(10*(lv-1)))*Math.random();
                if(board14==0){
                    bar15.source="image/bar_pink.png";
                }
            }
            if(bar16.y==24){
                board15=(300-(10*(lv-1)))*Math.random();
                if(board15==0){
                    bar16.source="image/bar_pink.png";
                }
            }

            if(bar17.y==24){
                board16=(300-(10*(lv-1)))*Math.random();
                if(board16==0){
                    bar17.source="image/bar_red.png";
                }
            }
            if(bar18.y==24){
                board17=(300-(10*(lv-1)))*Math.random();
                if(board17==0){
                    bar18.source="image/bar_red.png";
                }
            }
            if(bar19.y==24){
                board18=(300-(10*(lv-1)))*Math.random();
                if(board18==0){
                    bar19.source="image/bar_red.png";
                }
            }
            if(bar20.y==24){
                board19=(300-(10*(lv-1)))*Math.random();
                if(board19==0){
                    bar20.source="image/bar_red.png";
                }
            }
        }

    }
    function running(){
        if(background.enabled==true){
            if(board0==0){
                time0=time0+lv+2;
                if(time0%run==0){
                    bar1.y=(time0/run)*0.5+24;

                }

            }

            if(board1==0){
                time1=time1+lv+2;
                if(time1%run==0){
                    bar2.y=(time1/run)*0.5+24

                }

            }
            if(board2==0){
                time2=time2+lv+2;
                if(time2%run==0){
                    bar3.y=(time2/run)*0.5+24

                }

            }
            if(board3==0){
                time3=time3+lv+2;
                if(time3%run==0){
                    bar4.y=(time3/run)*0.5+24

                }

            }

            if(board4==0){
                time4=time4+lv+2;
                if(time4%run==0){
                    bar5.y=(time4/run)*0.5+24

                }

            }

            if(board5==0){
                time5=time5+lv+2;
                if(time5%run==0){
                    bar6.y=(time5/run)*0.5+24

                }

            }
            if(board6==0){
                time6=time6+lv+2;
                if(time6%run==0){
                    bar7.y=(time6/run)*0.5+24

                }

            }
            if(board7==0){
                time7=time7+lv+2;
                if(time7%run==0){
                    bar8.y=(time7/run)*0.5+24

                }

            }
            if(board8==0){
                time8=time8+lv+2;
                if(time8%run==0){
                    bar9.y=(time8/run)*0.5+24

                }

            }

            if(board9==0){
                time9=time9+lv+2;
                if(time9%run==0){
                    bar10.y=(time9/run)*0.5+24

                }

            }
            if(board10==0){
                time10=time10+lv+2;
                if(time10%run==0){
                    bar11.y=(time10/run)*0.5+24

                }

            }
            if(board11==0){
                time11=time11+lv+2;
                if(time11%run==0){
                    bar12.y=(time11/run)*0.5+24

                }

            }

            if(board12==0){
                time12=time12+lv+2;
                if(time12%run==0){
                    bar13.y=(time12/run)*0.5+24

                }

            }

            if(board13==0){
                time13=time13+lv+2;
                if(time13%run==0){
                    bar14.y=(time13/run)*0.5+24

                }

            }
            if(board14==0){
                time14=time14+lv+2;
                if(time14%run==0){
                    bar15.y=(time14/run)*0.5+24

                }

            }
            if(board15==0){
                time15=time15+lv+2;
                if(time15%run==0){
                    bar16.y=(time15/run)*0.5+24

                }

            }
            if(board16==0){
                time16=time16+lv+2;
                if(time16%run==0){
                    bar17.y=(time16/run)*0.5+24

                }

            }

            if(board17==0){
                time17=time17+lv+2;
                if(time17%run==0){
                    bar18.y=(time17/run)*0.5+24

                }

            }
            if(board18==0){
                time18=time18+lv+2;
                if(time18%run==0){
                    bar19.y=(time18/run)*0.5+24

                }

            }
            if(board19==0){
                time19=time19+lv+2;
                if(time19%run==0){
                    bar20.y=(time19/run)*0.5+24

                }

            }

        }

    }

    function nextround(){
        if(enabled==true){
            if(bar1.y>=565){

                console.log("miss");
                bar1.y=24;
                bar1.source="";
                time0=0;
                wrong++;
                miss1.source="image/miss.png"
                miss1.opacity=1
                ani1.running="true"

            }
            if(bar2.y>=565){
                console.log("miss");
                bar2.y=24;
                bar2.source="";
                time1=0;
                wrong++;
                miss1.source="image/miss.png"
                miss1.opacity=1
                ani1.running="true"

            }
            if(bar3.y>=565){
                console.log("miss");
                bar3.y=24;
                bar3.source="";
                time2=0;
                wrong++;
                miss1.source="image/miss.png"
                miss1.opacity=1
                ani1.running="true"


            }
            if(bar4.y>=565){
                console.log("miss");
                bar4.y=24;
                bar4.source="";
                time3=0;
                wrong++;
                miss1.source="image/miss.png"
                miss1.opacity=1
                ani1.running="true"
            }

            if(bar5.y>=565){
                console.log("miss");
                bar5.y=24;
                bar5.source="";
                time4=0;
                wrong++;
                miss2.source="image/miss.png"
                miss2.opacity=1
                ani2.running="true"
            }
            if(bar6.y>=565){
                console.log("miss");
                bar6.y=24;
                bar6.source="";
                time5=0;
                wrong++;
                miss2.source="image/miss.png"
                miss2.opacity=1
                ani2.running="true"
            }
            if(bar7.y>=565){
                console.log("miss");
                bar7.y=24;
                bar7.source="";
                time6=0;
                wrong++;
                miss2.source="image/miss.png"
                miss2.opacity=1
                ani2.running="true"
            }
            if(bar8.y>=565){
                console.log("miss");
                bar8.y=24;
                bar8.source="";
                time7=0;
                wrong++;
                miss2.source="image/miss.png"
                miss2.opacity=1
                ani2.running="true"
            }

            if(bar9.y>=565){
                console.log("miss");
                bar9.y=24;
                bar9.source="";
                time8=0;
                wrong++;
                miss3.source="image/miss.png"
                miss3.opacity=1
                ani3.running="true"
            }
            if(bar10.y>=565){
                console.log("miss");
                bar10.y=24;
                bar10.source="";
                time9=0;
                wrong++;
                miss3.source="image/miss.png"
                miss3.opacity=1
                ani3.running="true"
            }
            if(bar11.y>=565){
                console.log("miss");
                bar11.y=24;
                bar11.source="";
                time10=0;
                wrong++;
                miss3.source="image/miss.png"
                miss3.opacity=1
                ani3.running="true"
            }
            if(bar12.y>=565){
                console.log("miss");
                bar12.y=24;
                bar12.source="";
                time11=0;
                wrong++;
                miss3.source="image/miss.png"
                miss3.opacity=1
                ani3.running="true"
            }

            if(bar13.y>=565){
                console.log("miss");
                bar13.y=24;
                bar13.source="";
                time12=0;
                wrong++;
                miss4.source="image/miss.png"
                miss4.opacity=1
                ani4.running="true"
            }
            if(bar14.y>=565){
                console.log("miss");
                bar14.y=24;
                bar14.source="";
                time13=0;
                wrong++;
                miss4.source="image/miss.png"
                miss4.opacity=1
                ani4.running="true"
            }
            if(bar15.y>=565){
                console.log("miss");
                bar15.y=24;
                bar15.source="";
                time14=0;
                wrong++;
                miss4.source="image/miss.png"
                miss4.opacity=1
                ani4.running="true"
            }
            if(bar16.y>=565){
                console.log("miss");
                bar16.y=24;
                bar16.source="";
                time15=0;
                wrong++;
                miss4.source="image/miss.png"
                miss4.opacity=1
                ani4.running="true"
            }

            if(bar17.y>=565){
                console.log("miss");

                bar17.y=24;
                bar17.source="";
                time16=0;
                wrong++;

                miss5.source="image/miss.png"
                miss5.opacity=1
                ani5.running="true"
            }
            if(bar18.y>=565){
                 console.log("miss");

                bar18.y=24;
                bar18.source="";
                time17=0;
                wrong++;
                miss5.source="image/miss.png"
                miss5.opacity=1
                ani5.running="true"
            }
            if(bar19.y>=565){
                 console.log("miss");

                bar19.y=24;
                bar19.source="";
                time18=0;
                wrong++;
                miss5.source="image/miss.png"
                miss5.opacity=1
                ani5.running="true"
            }
            if(bar20.y>=565){
                 console.log("miss");

                bar20.y=24;
                bar20.source="";
                time19=0;
                wrong++;
                miss5.source="image/miss.png"
                miss5.opacity=1
                ani5.running="true"
            }
        }

    }
    function checkscore(){

        // freq Bass 82.41-329.63 Hz
        if(bar1.y>=496&&bar1.y<565){
            freq=audioRecorder.freq();
            if(freq>=82.41&&freq<=329.63){
                console.log("Okay")
                bar1.y=24;
                bar1.source="";
                time0=0;
                score=score+(100*lv)
                perfect1.source="image/perfect.png"
                perfect1.opacity=1
                ani11.running="true"
            }
        }
        if(bar2.y>=496&&bar2.y<565){
            freq=audioRecorder.freq();
            if(freq>=82.41&&freq<=329.63){
                console.log("Okay")
                bar2.y=24;
                bar2.source="";
                time1=0;
                score=score+(200*lv)
                perfect1.source="image/perfect.png"
                perfect1.opacity=1
                ani11.running="true"

            }
        }
        if(bar3.y>=496&&bar3.y<565){
            freq=audioRecorder.freq();
            if(freq>=82.41&&freq<=329.63){
                //console.log("PERFECT!!")
                bar3.y=24;
                bar3.source="";
                time2=0;
                score=score+(300*lv)
                perfect1.source="image/perfect.png"
                perfect1.opacity=1
                ani11.running="true"
            }
        }
        if(bar4.y>=496&&bar4.y<565){
            freq=audioRecorder.freq();
            if(freq>=82.41&&freq<=329.63){
                //console.log("PERFECT!!")
                bar4.y=24;
                bar4.source="";
                time3=0;
                score=score+(400*lv)
                perfect1.source="image/perfect.png"
                perfect1.opacity=1
                ani11.running="true"
            }
        }

        // freq Tenor 130.81-523.25 Hz
        if(bar5.y>=496&&bar5.y<565){
            freq=audioRecorder.freq();
            if(freq>=130.81&&freq<=523.25){
                console.log("Okay")
                bar5.y=24;
                bar5.source="";
                time4=0;
                score=score+(100*lv)
                perfect2.source="image/perfect.png"
                perfect2.opacity=1
                ani12.running="true"
            }
        }
        if(bar6.y>=496&&bar6.y<565){
            freq=audioRecorder.freq();
            if(freq>=130.81&&freq<=523.25){
                console.log("Okay")
                bar6.y=24;
                bar6.source="";
                time5=0;
                score=score+(200*lv)
                perfect2.source="image/perfect.png"
                perfect2.opacity=1
                ani12.running="true"
            }
        }
        if(bar7.y>=496&&bar7.y<565){
            freq=audioRecorder.freq();
            if(freq>=130.81&&freq<=523.25){
                console.log("PERFECT!!")
                bar7.y=24;
                bar7.source="";
                time6=0;
                score=score+(100*lv)
                perfect2.source="image/perfect.png"
                perfect2.opacity=1
                ani12.running="true"

            }
        }
        if(bar8.y>=496&&bar8.y<565){
            freq=audioRecorder.freq();
            if(freq>=130.81&&freq<=523.25){
                console.log("PERFECT!!")
                bar8.y=24;
                bar8.source="";
                time7=0;
                score=score+(200*lv)
                perfect2.source="image/perfect.png"
                perfect2.opacity=1
                ani12.running="true"
            }
        }

        // freq Contralto 174.61-698.46 Hz
        if(bar9.y>=496&&bar9.y<565){
            freq=audioRecorder.freq();
            if(freq>=174.61&&freq<=698.46){
                console.log("PERFECT!!")
                bar9.y=24;
                bar9.source="";
                time8=0;
                score=score+(100*lv)
                perfect3.source="image/perfect.png"
                perfect3.opacity=1
                ani13.running="true"
            }
        }
        if(bar10.y>=496&&bar10.y<565){
            freq=audioRecorder.freq();
            if(freq>=174.61&&freq<=698.46){
                console.log("PERFECT!!")
                bar10.y=24;
                bar10.source="";
                time9=0;
                score=score+(100*lv)
                perfect3.source="image/perfect.png"
                perfect3.opacity=1
                ani13.running="true"
            }
        }
        if(bar11.y>=496&&bar11.y<565){
            freq=audioRecorder.freq();
            if(freq>=174.61&&freq<=698.46){
                console.log("PERFECT!!")
                bar11.y=24;
                bar11.source="";
                time10=0;
                score=score+(100*lv)
                perfect3.source="image/perfect.png"
                perfect3.opacity=1
                ani13.running="true"
            }
        }
        if(bar12.y>=496&&bar12.y<565){
            freq=audioRecorder.freq();
            if(freq>=174.61&&freq<=698.46){
                console.log("PERFECT!!")
                bar12.y=24;
                bar12.source="";
                time11=0;
                score=score+(100*lv)
                perfect3.source="image/perfect.png"
                perfect3.opacity=1
                ani13.running="true"
            }
        }

        // freq Mezzo 650-880 Hz
        if(bar13.y>=496&&bar13.y<565){
            freq=audioRecorder.freq();
            if(freq>=650&&freq<=880){
                console.log("PERFECT!!")
                bar13.y=24;
                bar13.source="";
                time12=0;
                score=score+(200*lv)
                perfect4.source="image/perfect.png"
                perfect4.opacity=1
                ani14.running="true"

            }
        }
        if(bar14.y>=496&&bar14.y<565){
            freq=audioRecorder.freq();
            if(freq>=650&&freq<=880){
                console.log("PERFECT!!")
                bar14.y=24;
                bar14.source="";
                time13=0;
                score=score+(100*lv)
                perfect4.source="image/perfect.png"
                perfect4.opacity=1
                ani14.running="true"
            }
        }
        if(bar15.y>=496&&bar15.y<565){
            freq=audioRecorder.freq();
            if(freq>=650&&freq<=880){
                console.log("PERFECT!!")
                bar15.y=24;
                bar15.source="";
                time14=0;
                score=score+(200*lv)
                perfect4.source="image/perfect.png"
                perfect4.opacity=1
                ani14.running="true"
            }
        }
        if(bar16.y>=496&&bar16.y<565){
            freq=audioRecorder.freq();
            if(freq>=650&&freq<=880){
                console.log("PERFECT!!")
                bar16.y=24;
                bar16.source="";
                time15=0;
                score=score+(100*lv)
                perfect4.source="image/perfect.png"
                perfect4.opacity=1
                ani14.running="true"
            }
        }

        // freq Soprano 700-1046.5 Hz
        if(bar17.y>=496&&bar17.y<565){
            freq=audioRecorder.freq();
            if(freq>=700&&freq<=1046.5){
                console.log("PERFECT!!")
                bar17.y=24;
                bar17.source="";
                time16=0;
                score=score+(400*lv)
                perfect5.source="image/perfect.png"
                perfect5.opacity=1
                ani15.running="true"
            }
        }
        if(bar18.y>=496&&bar18.y<565){
            freq=audioRecorder.freq();
            if(freq>=700&&freq<=1046.5){
                //console.log("PERFECT!!")
                bar18.y=24;
                bar18.source="";
                time17=0;
                score=score+(300*lv)
                perfect5.source="image/perfect.png"
                perfect5.opacity=1
                ani15.running="true"
            }
        }
        if(bar19.y>=496&&bar19.y<565){
            freq=audioRecorder.freq();
            if(freq>=700&&freq<=1046.5){
                //console.log("PERFECT!!")
                bar19.y=24;
                bar19.source="";
                time18=0;
                score=score+(200*lv)
                perfect5.source="image/perfect.png"
                perfect5.opacity=1
                ani15.running="true"
            }
        }
        if(bar20.y>=496&&bar20.y<565){
            freq=audioRecorder.freq();
            if(freq>=700&&freq<=1046.5){
                //console.log("PERFECT!!")
                bar20.y=24;
                bar20.source="";
                time19=0;
                score=score+(100*lv)
                perfect5.source="image/perfect.png"
                perfect5.opacity=1
                ani15.running="true"
            }
        }

    }
    function losegame(){

        if(wrong>=25){
            tab1.source="image/tab1.png"
            tab2.source="image/tab1.png"
            tab3.source="image/tab1.png"
            tab4.source="image/tab1.png"
            tab5.source="image/tab1.png"
            timer.stop()
            //state='State1';
            setScore();
            pageRequested("highscore.qml");

        }
        else if(wrong>=20){
            tab1.source="image/tab1.png"
            tab2.source="image/tab1.png"
            tab3.source="image/tab1.png"
            tab4.source="image/tab1.png"
            tab5.source=""
        }
        else if(wrong>=15){
            tab1.source="image/tab1.png"
            tab2.source="image/tab1.png"
            tab3.source="image/tab1.png"
            tab4.source=""
            tab5.source=""
        }
        else if(wrong>=10){
            tab1.source="image/tab1.png"
            tab2.source="image/tab1.png"
            tab3.source=""
            tab4.source=""
            tab5.source=""
        }
        else if(wrong>=5){
            tab1.source="image/tab1.png"
            tab2.source=""
            tab3.source=""
            tab4.source=""
            tab5.source=""

        }
        else{
            tab1.source=""
            tab2.source=""
            tab3.source=""
            tab4.source=""
            tab5.source=""

        }
    }



    function  timeChanged(){


            if(starttt==0){
                audioRecorder.record();
                starttt=1;
                //   console.log("A");
            }
            if(enabled==true){
                start();
                running();
                nextround();
                checkscore();
                losegame();
                if(score>=mainscore+5000){
                    console.log("next");
                    lv++;
                    mainscore=score;

                }
            }

    }
    //bar dynamic




    Image {
        id: background
        x: 0
        y: -1
        width: 360
        height: 640
        source: "image/mission1.png"


    }

    Image {
        id: bar1
        x: 0
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar2
        x: 0
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar3
        x: 0
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar4
        x: 0
        y:24
        width: 72
        height: 16
        source: ""

    }

    Image {
        id: bar5
        x: 72
        y: 24
        width: 72
        height: 16
        source: ""

    }

    Image {
        id: bar6
        x: 72
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar7
        x: 72
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar8
        x: 72
        y: 24
        width: 72
        height: 16
        source: ""

    }


    Image {
        id: bar9
        x: 144
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar10
        x: 144
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar11
        x: 144
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar12
        x: 144
        y: 24
        width: 72
        height: 16
        source: ""

    }


    Image {
        id: bar13
        x: 216
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar14
        x: 216
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar15
        x: 216
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar16
        x: 216
        y: 24
        width: 72
        height: 16
        source: ""

    }

    Image {
        id: bar17
        x: 288
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar18
        x: 288
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar19
        x: 288
        y: 24
        width: 72
        height: 16
        source: ""

    }
    Image {
        id: bar20
        x: 288
        y: 24
        width: 72
        height: 16
        source: ""

    }

    //tab heart
    Image {
        id: tab1
        x: 216
        y: 0
        width: 28
        height: 24
        source: ""

    }
    Image {
        id: tab2
        x: 243
        y: 0
        width: 28
        height: 24
        source: ""

    }
    Image {
        id: tab3
        x: 270
        y: 0
        width: 25
        height: 24
        source: ""

    }
    Image {
        id: tab4
        x: 294
        y: 0
        width: 28
        height: 24
        source: ""

    }
    Image {
        id: tab5
        x: 322
        y: 0
        width: 26
        height: 24
        source: ""

    }

    Text {
        id: text1
        x: 36
        y: 606
        width: 80
        height: 20
        text: lv
        font.pixelSize: 20
    }

    Text {
        id: text2
        x: 133
        y: 606
        width: 80
        height: 20
        text:score
        font.pixelSize: 20
    }

    Rectangle {
        id: reset
        x: 248
        y: 589
        width: 46
        height: 46
        color: "#000000"
        radius: 23

        MouseArea {
            id: mouse_area32
            x: 0
            y: 0
            width: 46
            height: 46
            onClicked: {
                score=0;
                lv=1;
                wrong=0;

            }
        }

        Image {
            id: image6
            x: -4
            y: -1
            width: 53
            height: 53
            source: "image/refresh.png"
        }

        states: State {
            name: "pressed"; when: mouse_area32.pressed == true
            PropertyChanges { target:image6; opacity:0.7}
        }

    }

    Rectangle {
        id: pause
        width: 50; height: 50
        x : 194; y: 587; radius: 25
        color: "#000000"


        MouseArea { id: mouseAreaPause; anchors.fill: parent;
            onClicked: {
                background.enabled = !background.enabled;
                if(set==0){
                    pauseButton.source = "image/player_play.png";
                    set=1
                }else {
                    pauseButton.source = "image/player_pause.png";
                    set=0;
                }


            }
        }



        Image {
            id: pauseButton
            x: -7
            y: -7
            width: 65
            height: 65
            source: "image/player_pause.png"
        }



        states: State {
            name: "pressed"; when: mouseAreaPause.pressed == true
            PropertyChanges { target:pauseButton; opacity:0.7}
        }
    }
    Image {
        id: image2
        x: 0
        y: 0
        source: "image/game4.png"
        opacity: 0
    }

    Rectangle {
        id: menu1
        x: 299
        y: 587
        width: 50
        height: 50
        color: "#000000"
        radius: 25

        MouseArea {
            id: mouse_area31
            x: 0
            y: 0
            width: 50
            height: 50
            onClicked: {
                pageRequested("menu.qml")

            }
        }

        Image {
            id: image5
            x: -7
            y: -7
            width: 65
            height: 65
            source: "image/button_cancel.png"
        }

        states: State {
            name: "pressed"; when: mouse_area31.pressed == true
            PropertyChanges { target:image5; opacity:0.7}
        }

    }

    Image {
        id: miss1
        x: 8
        y: 553
        source: ""

    }

    Image {
        id: miss2
        x: 80
        y: 553
        source: ""

    }

    Image {
        id: miss3
        x: 152
        y: 553
        source: ""

    }

    Image {
        id: miss4
        x: 224
        y: 553
        source: ""

    }
    Image {
        id: miss5
        x: 296
        y: 553
        source: ""

    }




    SequentialAnimation{
        id:ani1
        NumberAnimation{
            target: miss1
            properties:"y"
            from: 553; to:510;
            duration: 500
        }
        NumberAnimation{
            target: miss1
            properties: "opacity"
            from: 1.0; to: 0.0;
            duration: 500
        }

        running: false

    }

    SequentialAnimation{
        id:ani2
        NumberAnimation{
            target: miss2
            properties:"y"
            from: 553; to:510;
            duration: 500
        }
        NumberAnimation{
            target: miss2
            properties: "opacity"
            from: 1.0; to: 0.0;
            duration: 500
        }

        running: false

    }
    SequentialAnimation{
        id:ani3
        NumberAnimation{
            target: miss3
            properties:"y"
            from: 553; to:510;
            duration: 500
        }
        NumberAnimation{
            target: miss3
            properties: "opacity"
            from: 1.0; to: 0.0;
            duration: 500
        }

        running: false

    }
    SequentialAnimation{
        id:ani4
        NumberAnimation{
            target: miss4
            properties:"y"
            from: 533; to:510;
            duration: 500
        }
        NumberAnimation{
            target: miss4
            properties: "opacity"
            from: 1.0; to: 0.0;
            duration: 500
        }

        running: false

    }
    SequentialAnimation{
        id:ani5
        NumberAnimation{
            target: miss5
            properties:"y"
            from: 553; to:510;
            duration: 500
        }
        NumberAnimation{
            target: miss5
            properties: "opacity"
            from: 1.0; to: 0.0;
            duration: 500
        }

        running: false

    }

    Image {
        id: perfect1
        x: -4
        y: 520
        source: ""
    }

    Image {
        id: perfect2
        x: 68
        y: 553
        source: ""
    }

    Image {
        id: perfect3
        x: 139
        y: 553
        source: ""
    }

    Image {
        id: perfect4
        x: 210
        y: 553
        source: ""
    }

    Image {
        id: perfect5
        x: 282
        y: 553
        source: ""
    }
    SequentialAnimation{
        id:ani11
        NumberAnimation{
            target: perfect1
            properties:"y"
            from: 520; to:480;
            duration: 500
        }
        NumberAnimation{
            target: perfect1
            properties: "opacity"
            from: 1.0; to: 0.0;
            duration: 500
        }
        running: false
    }
    SequentialAnimation{
        id:ani12
        NumberAnimation{
            target: perfect2
            properties:"y"
            from: 520; to:480;
            duration: 500
        }
        NumberAnimation{
            target: perfect2
            properties: "opacity"
            from: 1.0; to: 0.0;
            duration: 500
        }
        running: false
    }
    SequentialAnimation{
        id:ani13
        NumberAnimation{
            target: perfect3
            properties:"y"
            from: 520; to:480;
            duration: 500
        }
        NumberAnimation{
            target: perfect3
            properties: "opacity"
            from: 1.0; to: 0.0;
            duration: 500
        }
        running: false
    }
    SequentialAnimation{
        id:ani14
        NumberAnimation{
            target: perfect4
            properties:"y"
            from: 520; to:480;
            duration: 500
        }
        NumberAnimation{
            target: perfect4
            properties: "opacity"
            from: 1.0; to: 0.0;
            duration: 500
        }
        running: false
    }
    SequentialAnimation{
        id:ani15
        NumberAnimation{
            target: perfect5
            properties:"y"
            from: 520; to:480;
            duration: 500
        }
        NumberAnimation{
            target: perfect5
            properties: "opacity"
            from: 1.0; to: 0.0;
            duration: 500
        }
        running: false
    }
}
