#ifndef FILELOADER_H
#define FILELOADER_H

#include <QObject>

class FileLoader : public QObject
{
    Q_OBJECT
public:
    explicit FileLoader(QObject *parent = nullptr);

signals:

public slots:
};

#endif // FILELOADER_H