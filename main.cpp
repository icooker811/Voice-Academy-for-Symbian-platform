#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"
#include <qdeclarative.h>
#include <QDeclarativeView>
#include "audiorecorder.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QmlApplicationViewer viewer;
    qmlRegisterType<AudioRecorder>("AudioRecorder", 1, 0, "AudioRecorder");

    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationLockPortrait);
    viewer.setMainQmlFile(QLatin1String("qml/AudioRecordAndPlayback/temp.qml"));
    //viewer.showExpanded();
    viewer.showFullScreen();

    return app.exec();
}
