#include "audiorecorder.h"
#include "voiceanalyzer.h"



AudioRecorder::AudioRecorder(QDeclarativeItem *parent) :
    QDeclarativeItem(parent)
{
    setup();
}

void AudioRecorder::setup()
{
    status = 0;
    format.setSampleRate(48000);
    format.setChannels(1);
    format.setSampleSize(16);
    format.setCodec("audio/pcm");
    format.setByteOrder(QAudioFormat::LittleEndian);
    format.setSampleType(QAudioFormat::SignedInt);
    QAudioDeviceInfo info = QAudioDeviceInfo::defaultInputDevice();
    if (!info.isFormatSupported(format)) {
        qWarning()<<"default format not supported try to use nearest";
        format = info.nearestFormat(format);
    }

    m_analyzer = new VoiceAnalyzer(format, this);
    m_analyzer->setCutOffPercentage(0.5);

}


void AudioRecorder::stop()
{
    if(status == 1) {
        audioInput->stop();
        m_analyzer->stop();
        delete audioInput;
        status = 0;
    } else if(status == 2) {
        audioOutput->stop();
        delete audioOutput;
        status = 0;
    }

}

void AudioRecorder::record()
{

    audioInput = new QAudioInput(format, this);
    m_analyzer->start(1000);
    audioInput->start(m_analyzer);

    status = 1;

}

void AudioRecorder::play()
{
    audioOutput = new QAudioOutput(format, this);
    audioOutput->start(buffer);
    status = 2;
}
int AudioRecorder::freq(){

    int f= m_analyzer->freq();
    return  f;
}

