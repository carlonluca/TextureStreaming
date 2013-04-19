/*
 * Author:  Luca Carlon
 * Company: -
 * Date:    02.09.2013
 * Project: TextureStreaming
 */

import QtQuick 1.1
import com.luke.texturestreaming 0.1

Rectangle {
    id: mainRectangle
    property int indexVideo: 0
    property int indexFlippable: 0
    width: 800
    height: 480
    color: "red"
    focus: true

    Keys.onPressed: {
        if (event.key === Qt.Key_S)
            omxVideoSurface.stop();
        else if (event.key === Qt.Key_P)
            omxVideoSurface.play();
        else if (event.key === Qt.Key_A)
            omxVideoSurface.pause();
    }

    Timer {
        interval: 5000; running: true; repeat: true
        onTriggered: {
            indexVideo++;
            var theState = indexVideo%4;
            if (theState == 0)
                mainRectangle.state = "LARGE";
            else if (theState == 1)
                mainRectangle.state = "NORMAL";
            else if (theState == 2)
                myFlip.showBack();
            else if (theState == 3)
                myFlip.showFront();
        }
    }

    /*Timer {
        interval: 4000; running: true; repeat: true
        onTriggered: {
            indexFlippable++;
            if (indexFlippable%2 == 0)
                mainRectangle.state = "NORMAL";
            else
                mainRectangle.state = "LARGE";
        }
    }*/

    Flipable {
        id: myFlip
        x:50
        y:50
        width: 400
        height: 300

        function showFront() {
            rot.angle = 0;
        }

        function showBack() {
            rot.angle = 180;
        }

        transform: Rotation {
            id: rot
            origin.x: 200;
            origin.y: 150;
            axis.x: 0; axis.y: 1; axis.z: 0
            angle: 0

            Behavior on angle { PropertyAnimation{} }
        }

        /*front: Item {
            Rectangle {
                width: 800
                height: 430
                color:"green"
            }

            Text {
                x: 0
                y:200
                text: "My super cool green view"
            }
        }*/
        front: VideoSurface {
            id: omxVideoSurface
            width: 400
            height: 300
            x: 50
            y: 50
            //source: "/home/pi/usb/out.h264"
            //Component.onCompleted: omxVideoSurface.play();

            SequentialAnimation {
                id: theAnimation
                PropertyAnimation {
                    target: omxVideoSurface
                    property: "opacity"
                    to: 0.0
                    duration: 1000
                }
                PropertyAnimation {
                    target: omxVideoSurface
                    property: "opacity"
                    to: 1.0
                    duration: 1000
                }
            }
        }

        back: Item {
            Rectangle {
                width: 400
                height: 300
                color: "green"
            }

            Text {
                x: 30
                y: 200
                text: "Turn for the cool side!"
                font.pixelSize: 20
                font.weight: Font.Bold
            }
        }
    }

    Image {
        x: 550
        y: 50
        width: 147
        height: 240
        source: "file:///data/bbb.png"
        opacity: 0.5
    }

    Text {
        id: myMarquee
        text: "Marquee effect here!"
        x: 0
        y: 500

        font.pixelSize: 80
        font.weight: Font.Bold

        SequentialAnimation {
            loops: Animation.Infinite
            running: true
            SmoothedAnimation {
                target: myMarquee
                property: "x"
                from: 0
                to: 1280
                duration: 10000
            }
        }
    }

    states: [
        State {
            name: "NORMAL"
            PropertyChanges {
                target: omxVideoSurface
                x: 50; y: 50; width: 400; height: 300;
            }
            PropertyChanges {
                target: myFlip
                x: 50; y: 50; width: 400; height: 300;
            }
        },
        State {
            name: "LARGE"
            PropertyChanges {
                target: omxVideoSurface;
                x: 0; y: 0; width: 800; height: 480;
            }
            PropertyChanges {
                target: myFlip
                x: 0; y: 0; width: 800; height: 480;
            }
        }
    ]

    transitions: [
        Transition {
            NumberAnimation {properties: "width,height"; duration: 800; easing.type: Easing.OutBounce}
            NumberAnimation {properties: "x,y"; duration: 800}
        }

    ]
}
