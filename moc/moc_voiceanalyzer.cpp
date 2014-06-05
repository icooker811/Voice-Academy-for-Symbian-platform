/****************************************************************************
** Meta object code from reading C++ file 'voiceanalyzer.h'
**
** Created: Tue 1. Nov 14:54:33 2011
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../voiceanalyzer.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'voiceanalyzer.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_VoiceAnalyzer[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
      25,   15,   14,   14, 0x05,
      51,   14,   14,   14, 0x05,
      70,   14,   14,   14, 0x05,

 // slots: signature, parameters, type, tag, flags
      88,   81,   14,   14, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_VoiceAnalyzer[] = {
    "VoiceAnalyzer\0\0frequency\0"
    "voiceDifference(QVariant)\0correctFrequency()\0"
    "lowVoice()\0cutoff\0setCutOffPercentage(qreal)\0"
};

const QMetaObject VoiceAnalyzer::staticMetaObject = {
    { &QIODevice::staticMetaObject, qt_meta_stringdata_VoiceAnalyzer,
      qt_meta_data_VoiceAnalyzer, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &VoiceAnalyzer::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *VoiceAnalyzer::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *VoiceAnalyzer::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_VoiceAnalyzer))
        return static_cast<void*>(const_cast< VoiceAnalyzer*>(this));
    return QIODevice::qt_metacast(_clname);
}

int VoiceAnalyzer::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QIODevice::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: voiceDifference((*reinterpret_cast< QVariant(*)>(_a[1]))); break;
        case 1: correctFrequency(); break;
        case 2: lowVoice(); break;
        case 3: setCutOffPercentage((*reinterpret_cast< qreal(*)>(_a[1]))); break;
        default: ;
        }
        _id -= 4;
    }
    return _id;
}

// SIGNAL 0
void VoiceAnalyzer::voiceDifference(QVariant _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void VoiceAnalyzer::correctFrequency()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void VoiceAnalyzer::lowVoice()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}
QT_END_MOC_NAMESPACE
