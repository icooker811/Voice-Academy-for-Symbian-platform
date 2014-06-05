/****************************************************************************
** Meta object code from reading C++ file 'audiorecorder.h'
**
** Created: Tue 1. Nov 14:54:34 2011
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../audiorecorder.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'audiorecorder.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_AudioRecorder[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: signature, parameters, type, tag, flags
      15,   14,   14,   14, 0x02,
      22,   14,   14,   14, 0x02,
      29,   14,   14,   14, 0x02,
      42,   14,   38,   14, 0x02,

       0        // eod
};

static const char qt_meta_stringdata_AudioRecorder[] = {
    "AudioRecorder\0\0stop()\0play()\0record()\0"
    "int\0freq()\0"
};

const QMetaObject AudioRecorder::staticMetaObject = {
    { &QDeclarativeItem::staticMetaObject, qt_meta_stringdata_AudioRecorder,
      qt_meta_data_AudioRecorder, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &AudioRecorder::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *AudioRecorder::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *AudioRecorder::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_AudioRecorder))
        return static_cast<void*>(const_cast< AudioRecorder*>(this));
    return QDeclarativeItem::qt_metacast(_clname);
}

int AudioRecorder::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDeclarativeItem::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: stop(); break;
        case 1: play(); break;
        case 2: record(); break;
        case 3: { int _r = freq();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = _r; }  break;
        default: ;
        }
        _id -= 4;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
