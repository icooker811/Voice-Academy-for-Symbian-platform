#ifndef FASTFOURIERTRANSFORM_H
#define FASTFOURIERTRANSFORM_H

#include <QObject>
#include <QList>
#include <QDeclarativeItem>
class FastFourierTransformer : public QObject
{
    Q_OBJECT

public:
    FastFourierTransformer(QObject *parent = 0);
    ~FastFourierTransformer();
    void reserve(int n);
    void calculateFFT(QList<qint16> wave);
    int getMaximumDensityIndex();
    void setCutOffForDensity(float cutoff);

private:
    float *m_waveFloat;
    float *m_workingArray;
    int *m_ifac;
    int m_last_n;
    float m_cutOffForDensitySquared;
};

#endif // FASTFOURIERTRANSFORM_H
