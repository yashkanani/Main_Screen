#ifndef MOUSEHANDLER_H
#define MOUSEHANDLER_H

#include <QObject>

class MouseHandler : public QObject
{
    Q_OBJECT
public:
    explicit MouseHandler(QObject *parent = nullptr);

signals:

public slots:
};

#endif // MOUSEHANDLER_H