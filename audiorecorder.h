#ifndef AUDIORECORDER_H
#define AUDIORECORDER_H

#include <QDeclarativeItem>
#include <QAudioDeviceInfo>
#include <QAudioInput>
#include <QAudioOutput>
#include <QBuffer>


class VoiceAnalyzer;
class FastFourierTransformer;

class AudioRecorder : public QDeclarativeItem
{
    Q_OBJECT
public:
    explicit AudioRecorder(QDeclarativeItem *parent = 0);

private:
    VoiceAnalyzer *m_analyzer;
    QAudioInput* audioInput;
    QAudioOutput* audioOutput;
    QBuffer* buffer;
    QAudioFormat format;
    QAudioFormat m_formatInput;
    int status;
    void setup();


signals:

public:
    Q_INVOKABLE void stop();
    Q_INVOKABLE void play();
    Q_INVOKABLE void record();
    Q_INVOKABLE int  freq();


};

#endif // AUDIORECORDER_H
